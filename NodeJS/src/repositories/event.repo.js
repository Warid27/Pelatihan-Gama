const Event = require("../models/event.model");

const showAll = async () => {
  try {
    return await Event.findAll();
  } catch (error) {
    console.error("Error in showAll:", error);
    throw new Error("Gagal mengambil data event.");
  }
};

const where = async (where) => {
  try {
    return await Event.findAll({ where });
  } catch (error) {
    console.error("Error in where:", error);
    throw new Error("Gagal mencari data event dengan kriteria tertentu.");
  }
};

const insert = async (param) => {
  try {
    if (!param.nama || !param.tempat_acara || !param.waktu_mulai || !param.waktu_selesai) {
      throw new Error("Semua parameter harus diisi.");
    }
    return await Event.create(param);
  } catch (error) {
    console.error("Error in insert:", error);
    throw new Error("Gagal menambahkan data event.");
  }
};

const update = async (id, param) => {
  try {
    if (!id) {
      throw new Error("ID event harus diberikan.");
    }
    const result = await Event.update(param, { where: { id_event: id } });
    if (result[0] === 0) {
      throw new Error("Tidak ada data yang diupdate.");
    }
    return result;
  } catch (error) {
    console.error("Error in update:", error);
    throw new Error("Gagal memperbarui data event.");
  }
};

const delete_status = async (id, param) => {
  try {
    if (!id) {
      throw new Error("ID event harus diberikan.");
    }
    const result = await Event.update(param, { where: { id_event: id } });
    if (result[0] === 0) {
      throw new Error("Tidak ada data yang diupdate untuk status delete.");
    }
    return result;
  } catch (error) {
    console.error("Error in delete_status:", error);
    throw new Error("Gagal mengubah status delete event.");
  }
};

module.exports = { showAll, insert, update, where, delete_status };

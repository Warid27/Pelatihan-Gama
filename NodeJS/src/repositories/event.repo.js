const Event = require("../models/event.model");

const showAll = async () => {
  try {
    return await Event.findAll();
  } catch (error) {
    throw new Error(error);
  }
};

const where = async (where) => {
  try {
    return await Event.findAll({
      where : where
    })
  } catch (error) {
   
    throw new Error(error)
  }
 }
 

const insert = async (param) => {
  try {
    return await Event.create(param);
  } catch (error) {
    throw new Error(error);
  }
};

const update = async (id, param) => {
 try {
  
   return await Event.update(param, {
     where : {
       id_event : id
     }
   })
 } catch (error) {  
   throw new Error(error)
 }
}

const delete_status = async (id, param) => {
 try {
  
   return await Event.update(param, {
     where : {
       id_event : id
     }
   })
 } catch (error) {  
   throw new Error(error)
 }
}


module.exports = { showAll, insert, update, where, delete_status };

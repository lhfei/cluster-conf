// ORM class for table 'PHONE_TABS_CLICK_SUMMARY'
// WARNING: This class is AUTO-GENERATED. Modify at your own risk.
//
// Debug information:
// Generated date: Tue Nov 24 20:25:13 CST 2015
// For connector: org.apache.sqoop.manager.MySQLManager
import org.apache.hadoop.io.BytesWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.io.Writable;
import org.apache.hadoop.mapred.lib.db.DBWritable;
import com.cloudera.sqoop.lib.JdbcWritableBridge;
import com.cloudera.sqoop.lib.DelimiterSet;
import com.cloudera.sqoop.lib.FieldFormatter;
import com.cloudera.sqoop.lib.RecordParser;
import com.cloudera.sqoop.lib.BooleanParser;
import com.cloudera.sqoop.lib.BlobRef;
import com.cloudera.sqoop.lib.ClobRef;
import com.cloudera.sqoop.lib.LargeObjectLoader;
import com.cloudera.sqoop.lib.SqoopRecord;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public class PHONE_TABS_CLICK_SUMMARY extends SqoopRecord  implements DBWritable, Writable {
  private final int PROTOCOL_VERSION = 3;
  public int getClassFormatVersion() { return PROTOCOL_VERSION; }
  protected ResultSet __cur_result_set;
  private String IMEI;
  public String get_IMEI() {
    return IMEI;
  }
  public void set_IMEI(String IMEI) {
    this.IMEI = IMEI;
  }
  public PHONE_TABS_CLICK_SUMMARY with_IMEI(String IMEI) {
    this.IMEI = IMEI;
    return this;
  }
  private Integer EXPOSURE_ON_PHONE_LATEST;
  public Integer get_EXPOSURE_ON_PHONE_LATEST() {
    return EXPOSURE_ON_PHONE_LATEST;
  }
  public void set_EXPOSURE_ON_PHONE_LATEST(Integer EXPOSURE_ON_PHONE_LATEST) {
    this.EXPOSURE_ON_PHONE_LATEST = EXPOSURE_ON_PHONE_LATEST;
  }
  public PHONE_TABS_CLICK_SUMMARY with_EXPOSURE_ON_PHONE_LATEST(Integer EXPOSURE_ON_PHONE_LATEST) {
    this.EXPOSURE_ON_PHONE_LATEST = EXPOSURE_ON_PHONE_LATEST;
    return this;
  }
  private Integer EXPOSURE_SUM_LATEST;
  public Integer get_EXPOSURE_SUM_LATEST() {
    return EXPOSURE_SUM_LATEST;
  }
  public void set_EXPOSURE_SUM_LATEST(Integer EXPOSURE_SUM_LATEST) {
    this.EXPOSURE_SUM_LATEST = EXPOSURE_SUM_LATEST;
  }
  public PHONE_TABS_CLICK_SUMMARY with_EXPOSURE_SUM_LATEST(Integer EXPOSURE_SUM_LATEST) {
    this.EXPOSURE_SUM_LATEST = EXPOSURE_SUM_LATEST;
    return this;
  }
  private Integer EXPOSURE_ON_PHONE_FOLLOW;
  public Integer get_EXPOSURE_ON_PHONE_FOLLOW() {
    return EXPOSURE_ON_PHONE_FOLLOW;
  }
  public void set_EXPOSURE_ON_PHONE_FOLLOW(Integer EXPOSURE_ON_PHONE_FOLLOW) {
    this.EXPOSURE_ON_PHONE_FOLLOW = EXPOSURE_ON_PHONE_FOLLOW;
  }
  public PHONE_TABS_CLICK_SUMMARY with_EXPOSURE_ON_PHONE_FOLLOW(Integer EXPOSURE_ON_PHONE_FOLLOW) {
    this.EXPOSURE_ON_PHONE_FOLLOW = EXPOSURE_ON_PHONE_FOLLOW;
    return this;
  }
  private Integer EXPOSURE_SUM_FOLLOW;
  public Integer get_EXPOSURE_SUM_FOLLOW() {
    return EXPOSURE_SUM_FOLLOW;
  }
  public void set_EXPOSURE_SUM_FOLLOW(Integer EXPOSURE_SUM_FOLLOW) {
    this.EXPOSURE_SUM_FOLLOW = EXPOSURE_SUM_FOLLOW;
  }
  public PHONE_TABS_CLICK_SUMMARY with_EXPOSURE_SUM_FOLLOW(Integer EXPOSURE_SUM_FOLLOW) {
    this.EXPOSURE_SUM_FOLLOW = EXPOSURE_SUM_FOLLOW;
    return this;
  }
  private Integer EXPOSURE_SUM_TOP;
  public Integer get_EXPOSURE_SUM_TOP() {
    return EXPOSURE_SUM_TOP;
  }
  public void set_EXPOSURE_SUM_TOP(Integer EXPOSURE_SUM_TOP) {
    this.EXPOSURE_SUM_TOP = EXPOSURE_SUM_TOP;
  }
  public PHONE_TABS_CLICK_SUMMARY with_EXPOSURE_SUM_TOP(Integer EXPOSURE_SUM_TOP) {
    this.EXPOSURE_SUM_TOP = EXPOSURE_SUM_TOP;
    return this;
  }
  private Integer EXPOSURE_ON_PHONE_TOP;
  public Integer get_EXPOSURE_ON_PHONE_TOP() {
    return EXPOSURE_ON_PHONE_TOP;
  }
  public void set_EXPOSURE_ON_PHONE_TOP(Integer EXPOSURE_ON_PHONE_TOP) {
    this.EXPOSURE_ON_PHONE_TOP = EXPOSURE_ON_PHONE_TOP;
  }
  public PHONE_TABS_CLICK_SUMMARY with_EXPOSURE_ON_PHONE_TOP(Integer EXPOSURE_ON_PHONE_TOP) {
    this.EXPOSURE_ON_PHONE_TOP = EXPOSURE_ON_PHONE_TOP;
    return this;
  }
  private Integer EXPOSURE_SUM_DESK;
  public Integer get_EXPOSURE_SUM_DESK() {
    return EXPOSURE_SUM_DESK;
  }
  public void set_EXPOSURE_SUM_DESK(Integer EXPOSURE_SUM_DESK) {
    this.EXPOSURE_SUM_DESK = EXPOSURE_SUM_DESK;
  }
  public PHONE_TABS_CLICK_SUMMARY with_EXPOSURE_SUM_DESK(Integer EXPOSURE_SUM_DESK) {
    this.EXPOSURE_SUM_DESK = EXPOSURE_SUM_DESK;
    return this;
  }
  private Integer EXPOSURE_ON_PHONE_DESK;
  public Integer get_EXPOSURE_ON_PHONE_DESK() {
    return EXPOSURE_ON_PHONE_DESK;
  }
  public void set_EXPOSURE_ON_PHONE_DESK(Integer EXPOSURE_ON_PHONE_DESK) {
    this.EXPOSURE_ON_PHONE_DESK = EXPOSURE_ON_PHONE_DESK;
  }
  public PHONE_TABS_CLICK_SUMMARY with_EXPOSURE_ON_PHONE_DESK(Integer EXPOSURE_ON_PHONE_DESK) {
    this.EXPOSURE_ON_PHONE_DESK = EXPOSURE_ON_PHONE_DESK;
    return this;
  }
  private Integer EXPOSURE_SUM_MANA;
  public Integer get_EXPOSURE_SUM_MANA() {
    return EXPOSURE_SUM_MANA;
  }
  public void set_EXPOSURE_SUM_MANA(Integer EXPOSURE_SUM_MANA) {
    this.EXPOSURE_SUM_MANA = EXPOSURE_SUM_MANA;
  }
  public PHONE_TABS_CLICK_SUMMARY with_EXPOSURE_SUM_MANA(Integer EXPOSURE_SUM_MANA) {
    this.EXPOSURE_SUM_MANA = EXPOSURE_SUM_MANA;
    return this;
  }
  private Integer EXPOSURE_ON_PHONE_MANA;
  public Integer get_EXPOSURE_ON_PHONE_MANA() {
    return EXPOSURE_ON_PHONE_MANA;
  }
  public void set_EXPOSURE_ON_PHONE_MANA(Integer EXPOSURE_ON_PHONE_MANA) {
    this.EXPOSURE_ON_PHONE_MANA = EXPOSURE_ON_PHONE_MANA;
  }
  public PHONE_TABS_CLICK_SUMMARY with_EXPOSURE_ON_PHONE_MANA(Integer EXPOSURE_ON_PHONE_MANA) {
    this.EXPOSURE_ON_PHONE_MANA = EXPOSURE_ON_PHONE_MANA;
    return this;
  }
  private String SUMMARY_DATE;
  public String get_SUMMARY_DATE() {
    return SUMMARY_DATE;
  }
  public void set_SUMMARY_DATE(String SUMMARY_DATE) {
    this.SUMMARY_DATE = SUMMARY_DATE;
  }
  public PHONE_TABS_CLICK_SUMMARY with_SUMMARY_DATE(String SUMMARY_DATE) {
    this.SUMMARY_DATE = SUMMARY_DATE;
    return this;
  }
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (!(o instanceof PHONE_TABS_CLICK_SUMMARY)) {
      return false;
    }
    PHONE_TABS_CLICK_SUMMARY that = (PHONE_TABS_CLICK_SUMMARY) o;
    boolean equal = true;
    equal = equal && (this.IMEI == null ? that.IMEI == null : this.IMEI.equals(that.IMEI));
    equal = equal && (this.EXPOSURE_ON_PHONE_LATEST == null ? that.EXPOSURE_ON_PHONE_LATEST == null : this.EXPOSURE_ON_PHONE_LATEST.equals(that.EXPOSURE_ON_PHONE_LATEST));
    equal = equal && (this.EXPOSURE_SUM_LATEST == null ? that.EXPOSURE_SUM_LATEST == null : this.EXPOSURE_SUM_LATEST.equals(that.EXPOSURE_SUM_LATEST));
    equal = equal && (this.EXPOSURE_ON_PHONE_FOLLOW == null ? that.EXPOSURE_ON_PHONE_FOLLOW == null : this.EXPOSURE_ON_PHONE_FOLLOW.equals(that.EXPOSURE_ON_PHONE_FOLLOW));
    equal = equal && (this.EXPOSURE_SUM_FOLLOW == null ? that.EXPOSURE_SUM_FOLLOW == null : this.EXPOSURE_SUM_FOLLOW.equals(that.EXPOSURE_SUM_FOLLOW));
    equal = equal && (this.EXPOSURE_SUM_TOP == null ? that.EXPOSURE_SUM_TOP == null : this.EXPOSURE_SUM_TOP.equals(that.EXPOSURE_SUM_TOP));
    equal = equal && (this.EXPOSURE_ON_PHONE_TOP == null ? that.EXPOSURE_ON_PHONE_TOP == null : this.EXPOSURE_ON_PHONE_TOP.equals(that.EXPOSURE_ON_PHONE_TOP));
    equal = equal && (this.EXPOSURE_SUM_DESK == null ? that.EXPOSURE_SUM_DESK == null : this.EXPOSURE_SUM_DESK.equals(that.EXPOSURE_SUM_DESK));
    equal = equal && (this.EXPOSURE_ON_PHONE_DESK == null ? that.EXPOSURE_ON_PHONE_DESK == null : this.EXPOSURE_ON_PHONE_DESK.equals(that.EXPOSURE_ON_PHONE_DESK));
    equal = equal && (this.EXPOSURE_SUM_MANA == null ? that.EXPOSURE_SUM_MANA == null : this.EXPOSURE_SUM_MANA.equals(that.EXPOSURE_SUM_MANA));
    equal = equal && (this.EXPOSURE_ON_PHONE_MANA == null ? that.EXPOSURE_ON_PHONE_MANA == null : this.EXPOSURE_ON_PHONE_MANA.equals(that.EXPOSURE_ON_PHONE_MANA));
    equal = equal && (this.SUMMARY_DATE == null ? that.SUMMARY_DATE == null : this.SUMMARY_DATE.equals(that.SUMMARY_DATE));
    return equal;
  }
  public boolean equals0(Object o) {
    if (this == o) {
      return true;
    }
    if (!(o instanceof PHONE_TABS_CLICK_SUMMARY)) {
      return false;
    }
    PHONE_TABS_CLICK_SUMMARY that = (PHONE_TABS_CLICK_SUMMARY) o;
    boolean equal = true;
    equal = equal && (this.IMEI == null ? that.IMEI == null : this.IMEI.equals(that.IMEI));
    equal = equal && (this.EXPOSURE_ON_PHONE_LATEST == null ? that.EXPOSURE_ON_PHONE_LATEST == null : this.EXPOSURE_ON_PHONE_LATEST.equals(that.EXPOSURE_ON_PHONE_LATEST));
    equal = equal && (this.EXPOSURE_SUM_LATEST == null ? that.EXPOSURE_SUM_LATEST == null : this.EXPOSURE_SUM_LATEST.equals(that.EXPOSURE_SUM_LATEST));
    equal = equal && (this.EXPOSURE_ON_PHONE_FOLLOW == null ? that.EXPOSURE_ON_PHONE_FOLLOW == null : this.EXPOSURE_ON_PHONE_FOLLOW.equals(that.EXPOSURE_ON_PHONE_FOLLOW));
    equal = equal && (this.EXPOSURE_SUM_FOLLOW == null ? that.EXPOSURE_SUM_FOLLOW == null : this.EXPOSURE_SUM_FOLLOW.equals(that.EXPOSURE_SUM_FOLLOW));
    equal = equal && (this.EXPOSURE_SUM_TOP == null ? that.EXPOSURE_SUM_TOP == null : this.EXPOSURE_SUM_TOP.equals(that.EXPOSURE_SUM_TOP));
    equal = equal && (this.EXPOSURE_ON_PHONE_TOP == null ? that.EXPOSURE_ON_PHONE_TOP == null : this.EXPOSURE_ON_PHONE_TOP.equals(that.EXPOSURE_ON_PHONE_TOP));
    equal = equal && (this.EXPOSURE_SUM_DESK == null ? that.EXPOSURE_SUM_DESK == null : this.EXPOSURE_SUM_DESK.equals(that.EXPOSURE_SUM_DESK));
    equal = equal && (this.EXPOSURE_ON_PHONE_DESK == null ? that.EXPOSURE_ON_PHONE_DESK == null : this.EXPOSURE_ON_PHONE_DESK.equals(that.EXPOSURE_ON_PHONE_DESK));
    equal = equal && (this.EXPOSURE_SUM_MANA == null ? that.EXPOSURE_SUM_MANA == null : this.EXPOSURE_SUM_MANA.equals(that.EXPOSURE_SUM_MANA));
    equal = equal && (this.EXPOSURE_ON_PHONE_MANA == null ? that.EXPOSURE_ON_PHONE_MANA == null : this.EXPOSURE_ON_PHONE_MANA.equals(that.EXPOSURE_ON_PHONE_MANA));
    equal = equal && (this.SUMMARY_DATE == null ? that.SUMMARY_DATE == null : this.SUMMARY_DATE.equals(that.SUMMARY_DATE));
    return equal;
  }
  public void readFields(ResultSet __dbResults) throws SQLException {
    this.__cur_result_set = __dbResults;
    this.IMEI = JdbcWritableBridge.readString(1, __dbResults);
    this.EXPOSURE_ON_PHONE_LATEST = JdbcWritableBridge.readInteger(2, __dbResults);
    this.EXPOSURE_SUM_LATEST = JdbcWritableBridge.readInteger(3, __dbResults);
    this.EXPOSURE_ON_PHONE_FOLLOW = JdbcWritableBridge.readInteger(4, __dbResults);
    this.EXPOSURE_SUM_FOLLOW = JdbcWritableBridge.readInteger(5, __dbResults);
    this.EXPOSURE_SUM_TOP = JdbcWritableBridge.readInteger(6, __dbResults);
    this.EXPOSURE_ON_PHONE_TOP = JdbcWritableBridge.readInteger(7, __dbResults);
    this.EXPOSURE_SUM_DESK = JdbcWritableBridge.readInteger(8, __dbResults);
    this.EXPOSURE_ON_PHONE_DESK = JdbcWritableBridge.readInteger(9, __dbResults);
    this.EXPOSURE_SUM_MANA = JdbcWritableBridge.readInteger(10, __dbResults);
    this.EXPOSURE_ON_PHONE_MANA = JdbcWritableBridge.readInteger(11, __dbResults);
    this.SUMMARY_DATE = JdbcWritableBridge.readString(12, __dbResults);
  }
  public void readFields0(ResultSet __dbResults) throws SQLException {
    this.IMEI = JdbcWritableBridge.readString(1, __dbResults);
    this.EXPOSURE_ON_PHONE_LATEST = JdbcWritableBridge.readInteger(2, __dbResults);
    this.EXPOSURE_SUM_LATEST = JdbcWritableBridge.readInteger(3, __dbResults);
    this.EXPOSURE_ON_PHONE_FOLLOW = JdbcWritableBridge.readInteger(4, __dbResults);
    this.EXPOSURE_SUM_FOLLOW = JdbcWritableBridge.readInteger(5, __dbResults);
    this.EXPOSURE_SUM_TOP = JdbcWritableBridge.readInteger(6, __dbResults);
    this.EXPOSURE_ON_PHONE_TOP = JdbcWritableBridge.readInteger(7, __dbResults);
    this.EXPOSURE_SUM_DESK = JdbcWritableBridge.readInteger(8, __dbResults);
    this.EXPOSURE_ON_PHONE_DESK = JdbcWritableBridge.readInteger(9, __dbResults);
    this.EXPOSURE_SUM_MANA = JdbcWritableBridge.readInteger(10, __dbResults);
    this.EXPOSURE_ON_PHONE_MANA = JdbcWritableBridge.readInteger(11, __dbResults);
    this.SUMMARY_DATE = JdbcWritableBridge.readString(12, __dbResults);
  }
  public void loadLargeObjects(LargeObjectLoader __loader)
      throws SQLException, IOException, InterruptedException {
  }
  public void loadLargeObjects0(LargeObjectLoader __loader)
      throws SQLException, IOException, InterruptedException {
  }
  public void write(PreparedStatement __dbStmt) throws SQLException {
    write(__dbStmt, 0);
  }

  public int write(PreparedStatement __dbStmt, int __off) throws SQLException {
    JdbcWritableBridge.writeString(IMEI, 1 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeInteger(EXPOSURE_ON_PHONE_LATEST, 2 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(EXPOSURE_SUM_LATEST, 3 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(EXPOSURE_ON_PHONE_FOLLOW, 4 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(EXPOSURE_SUM_FOLLOW, 5 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(EXPOSURE_SUM_TOP, 6 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(EXPOSURE_ON_PHONE_TOP, 7 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(EXPOSURE_SUM_DESK, 8 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(EXPOSURE_ON_PHONE_DESK, 9 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(EXPOSURE_SUM_MANA, 10 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(EXPOSURE_ON_PHONE_MANA, 11 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeString(SUMMARY_DATE, 12 + __off, 12, __dbStmt);
    return 12;
  }
  public void write0(PreparedStatement __dbStmt, int __off) throws SQLException {
    JdbcWritableBridge.writeString(IMEI, 1 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeInteger(EXPOSURE_ON_PHONE_LATEST, 2 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(EXPOSURE_SUM_LATEST, 3 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(EXPOSURE_ON_PHONE_FOLLOW, 4 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(EXPOSURE_SUM_FOLLOW, 5 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(EXPOSURE_SUM_TOP, 6 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(EXPOSURE_ON_PHONE_TOP, 7 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(EXPOSURE_SUM_DESK, 8 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(EXPOSURE_ON_PHONE_DESK, 9 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(EXPOSURE_SUM_MANA, 10 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(EXPOSURE_ON_PHONE_MANA, 11 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeString(SUMMARY_DATE, 12 + __off, 12, __dbStmt);
  }
  public void readFields(DataInput __dataIn) throws IOException {
this.readFields0(__dataIn);  }
  public void readFields0(DataInput __dataIn) throws IOException {
    if (__dataIn.readBoolean()) { 
        this.IMEI = null;
    } else {
    this.IMEI = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.EXPOSURE_ON_PHONE_LATEST = null;
    } else {
    this.EXPOSURE_ON_PHONE_LATEST = Integer.valueOf(__dataIn.readInt());
    }
    if (__dataIn.readBoolean()) { 
        this.EXPOSURE_SUM_LATEST = null;
    } else {
    this.EXPOSURE_SUM_LATEST = Integer.valueOf(__dataIn.readInt());
    }
    if (__dataIn.readBoolean()) { 
        this.EXPOSURE_ON_PHONE_FOLLOW = null;
    } else {
    this.EXPOSURE_ON_PHONE_FOLLOW = Integer.valueOf(__dataIn.readInt());
    }
    if (__dataIn.readBoolean()) { 
        this.EXPOSURE_SUM_FOLLOW = null;
    } else {
    this.EXPOSURE_SUM_FOLLOW = Integer.valueOf(__dataIn.readInt());
    }
    if (__dataIn.readBoolean()) { 
        this.EXPOSURE_SUM_TOP = null;
    } else {
    this.EXPOSURE_SUM_TOP = Integer.valueOf(__dataIn.readInt());
    }
    if (__dataIn.readBoolean()) { 
        this.EXPOSURE_ON_PHONE_TOP = null;
    } else {
    this.EXPOSURE_ON_PHONE_TOP = Integer.valueOf(__dataIn.readInt());
    }
    if (__dataIn.readBoolean()) { 
        this.EXPOSURE_SUM_DESK = null;
    } else {
    this.EXPOSURE_SUM_DESK = Integer.valueOf(__dataIn.readInt());
    }
    if (__dataIn.readBoolean()) { 
        this.EXPOSURE_ON_PHONE_DESK = null;
    } else {
    this.EXPOSURE_ON_PHONE_DESK = Integer.valueOf(__dataIn.readInt());
    }
    if (__dataIn.readBoolean()) { 
        this.EXPOSURE_SUM_MANA = null;
    } else {
    this.EXPOSURE_SUM_MANA = Integer.valueOf(__dataIn.readInt());
    }
    if (__dataIn.readBoolean()) { 
        this.EXPOSURE_ON_PHONE_MANA = null;
    } else {
    this.EXPOSURE_ON_PHONE_MANA = Integer.valueOf(__dataIn.readInt());
    }
    if (__dataIn.readBoolean()) { 
        this.SUMMARY_DATE = null;
    } else {
    this.SUMMARY_DATE = Text.readString(__dataIn);
    }
  }
  public void write(DataOutput __dataOut) throws IOException {
    if (null == this.IMEI) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, IMEI);
    }
    if (null == this.EXPOSURE_ON_PHONE_LATEST) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.EXPOSURE_ON_PHONE_LATEST);
    }
    if (null == this.EXPOSURE_SUM_LATEST) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.EXPOSURE_SUM_LATEST);
    }
    if (null == this.EXPOSURE_ON_PHONE_FOLLOW) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.EXPOSURE_ON_PHONE_FOLLOW);
    }
    if (null == this.EXPOSURE_SUM_FOLLOW) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.EXPOSURE_SUM_FOLLOW);
    }
    if (null == this.EXPOSURE_SUM_TOP) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.EXPOSURE_SUM_TOP);
    }
    if (null == this.EXPOSURE_ON_PHONE_TOP) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.EXPOSURE_ON_PHONE_TOP);
    }
    if (null == this.EXPOSURE_SUM_DESK) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.EXPOSURE_SUM_DESK);
    }
    if (null == this.EXPOSURE_ON_PHONE_DESK) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.EXPOSURE_ON_PHONE_DESK);
    }
    if (null == this.EXPOSURE_SUM_MANA) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.EXPOSURE_SUM_MANA);
    }
    if (null == this.EXPOSURE_ON_PHONE_MANA) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.EXPOSURE_ON_PHONE_MANA);
    }
    if (null == this.SUMMARY_DATE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, SUMMARY_DATE);
    }
  }
  public void write0(DataOutput __dataOut) throws IOException {
    if (null == this.IMEI) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, IMEI);
    }
    if (null == this.EXPOSURE_ON_PHONE_LATEST) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.EXPOSURE_ON_PHONE_LATEST);
    }
    if (null == this.EXPOSURE_SUM_LATEST) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.EXPOSURE_SUM_LATEST);
    }
    if (null == this.EXPOSURE_ON_PHONE_FOLLOW) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.EXPOSURE_ON_PHONE_FOLLOW);
    }
    if (null == this.EXPOSURE_SUM_FOLLOW) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.EXPOSURE_SUM_FOLLOW);
    }
    if (null == this.EXPOSURE_SUM_TOP) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.EXPOSURE_SUM_TOP);
    }
    if (null == this.EXPOSURE_ON_PHONE_TOP) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.EXPOSURE_ON_PHONE_TOP);
    }
    if (null == this.EXPOSURE_SUM_DESK) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.EXPOSURE_SUM_DESK);
    }
    if (null == this.EXPOSURE_ON_PHONE_DESK) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.EXPOSURE_ON_PHONE_DESK);
    }
    if (null == this.EXPOSURE_SUM_MANA) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.EXPOSURE_SUM_MANA);
    }
    if (null == this.EXPOSURE_ON_PHONE_MANA) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.EXPOSURE_ON_PHONE_MANA);
    }
    if (null == this.SUMMARY_DATE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, SUMMARY_DATE);
    }
  }
  private static final DelimiterSet __outputDelimiters = new DelimiterSet((char) 44, (char) 10, (char) 0, (char) 0, false);
  public String toString() {
    return toString(__outputDelimiters, true);
  }
  public String toString(DelimiterSet delimiters) {
    return toString(delimiters, true);
  }
  public String toString(boolean useRecordDelim) {
    return toString(__outputDelimiters, useRecordDelim);
  }
  public String toString(DelimiterSet delimiters, boolean useRecordDelim) {
    StringBuilder __sb = new StringBuilder();
    char fieldDelim = delimiters.getFieldsTerminatedBy();
    __sb.append(FieldFormatter.escapeAndEnclose(IMEI==null?"null":IMEI, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(EXPOSURE_ON_PHONE_LATEST==null?"null":"" + EXPOSURE_ON_PHONE_LATEST, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(EXPOSURE_SUM_LATEST==null?"null":"" + EXPOSURE_SUM_LATEST, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(EXPOSURE_ON_PHONE_FOLLOW==null?"null":"" + EXPOSURE_ON_PHONE_FOLLOW, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(EXPOSURE_SUM_FOLLOW==null?"null":"" + EXPOSURE_SUM_FOLLOW, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(EXPOSURE_SUM_TOP==null?"null":"" + EXPOSURE_SUM_TOP, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(EXPOSURE_ON_PHONE_TOP==null?"null":"" + EXPOSURE_ON_PHONE_TOP, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(EXPOSURE_SUM_DESK==null?"null":"" + EXPOSURE_SUM_DESK, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(EXPOSURE_ON_PHONE_DESK==null?"null":"" + EXPOSURE_ON_PHONE_DESK, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(EXPOSURE_SUM_MANA==null?"null":"" + EXPOSURE_SUM_MANA, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(EXPOSURE_ON_PHONE_MANA==null?"null":"" + EXPOSURE_ON_PHONE_MANA, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(SUMMARY_DATE==null?"null":SUMMARY_DATE, delimiters));
    if (useRecordDelim) {
      __sb.append(delimiters.getLinesTerminatedBy());
    }
    return __sb.toString();
  }
  public void toString0(DelimiterSet delimiters, StringBuilder __sb, char fieldDelim) {
    __sb.append(FieldFormatter.escapeAndEnclose(IMEI==null?"null":IMEI, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(EXPOSURE_ON_PHONE_LATEST==null?"null":"" + EXPOSURE_ON_PHONE_LATEST, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(EXPOSURE_SUM_LATEST==null?"null":"" + EXPOSURE_SUM_LATEST, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(EXPOSURE_ON_PHONE_FOLLOW==null?"null":"" + EXPOSURE_ON_PHONE_FOLLOW, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(EXPOSURE_SUM_FOLLOW==null?"null":"" + EXPOSURE_SUM_FOLLOW, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(EXPOSURE_SUM_TOP==null?"null":"" + EXPOSURE_SUM_TOP, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(EXPOSURE_ON_PHONE_TOP==null?"null":"" + EXPOSURE_ON_PHONE_TOP, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(EXPOSURE_SUM_DESK==null?"null":"" + EXPOSURE_SUM_DESK, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(EXPOSURE_ON_PHONE_DESK==null?"null":"" + EXPOSURE_ON_PHONE_DESK, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(EXPOSURE_SUM_MANA==null?"null":"" + EXPOSURE_SUM_MANA, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(EXPOSURE_ON_PHONE_MANA==null?"null":"" + EXPOSURE_ON_PHONE_MANA, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(SUMMARY_DATE==null?"null":SUMMARY_DATE, delimiters));
  }
  private static final DelimiterSet __inputDelimiters = new DelimiterSet((char) 9, (char) 10, (char) 0, (char) 0, false);
  private RecordParser __parser;
  public void parse(Text __record) throws RecordParser.ParseError {
    if (null == this.__parser) {
      this.__parser = new RecordParser(__inputDelimiters);
    }
    List<String> __fields = this.__parser.parseRecord(__record);
    __loadFromFields(__fields);
  }

  public void parse(CharSequence __record) throws RecordParser.ParseError {
    if (null == this.__parser) {
      this.__parser = new RecordParser(__inputDelimiters);
    }
    List<String> __fields = this.__parser.parseRecord(__record);
    __loadFromFields(__fields);
  }

  public void parse(byte [] __record) throws RecordParser.ParseError {
    if (null == this.__parser) {
      this.__parser = new RecordParser(__inputDelimiters);
    }
    List<String> __fields = this.__parser.parseRecord(__record);
    __loadFromFields(__fields);
  }

  public void parse(char [] __record) throws RecordParser.ParseError {
    if (null == this.__parser) {
      this.__parser = new RecordParser(__inputDelimiters);
    }
    List<String> __fields = this.__parser.parseRecord(__record);
    __loadFromFields(__fields);
  }

  public void parse(ByteBuffer __record) throws RecordParser.ParseError {
    if (null == this.__parser) {
      this.__parser = new RecordParser(__inputDelimiters);
    }
    List<String> __fields = this.__parser.parseRecord(__record);
    __loadFromFields(__fields);
  }

  public void parse(CharBuffer __record) throws RecordParser.ParseError {
    if (null == this.__parser) {
      this.__parser = new RecordParser(__inputDelimiters);
    }
    List<String> __fields = this.__parser.parseRecord(__record);
    __loadFromFields(__fields);
  }

  private void __loadFromFields(List<String> fields) {
    Iterator<String> __it = fields.listIterator();
    String __cur_str = null;
    try {
    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.IMEI = null; } else {
      this.IMEI = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.EXPOSURE_ON_PHONE_LATEST = null; } else {
      this.EXPOSURE_ON_PHONE_LATEST = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.EXPOSURE_SUM_LATEST = null; } else {
      this.EXPOSURE_SUM_LATEST = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.EXPOSURE_ON_PHONE_FOLLOW = null; } else {
      this.EXPOSURE_ON_PHONE_FOLLOW = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.EXPOSURE_SUM_FOLLOW = null; } else {
      this.EXPOSURE_SUM_FOLLOW = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.EXPOSURE_SUM_TOP = null; } else {
      this.EXPOSURE_SUM_TOP = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.EXPOSURE_ON_PHONE_TOP = null; } else {
      this.EXPOSURE_ON_PHONE_TOP = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.EXPOSURE_SUM_DESK = null; } else {
      this.EXPOSURE_SUM_DESK = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.EXPOSURE_ON_PHONE_DESK = null; } else {
      this.EXPOSURE_ON_PHONE_DESK = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.EXPOSURE_SUM_MANA = null; } else {
      this.EXPOSURE_SUM_MANA = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.EXPOSURE_ON_PHONE_MANA = null; } else {
      this.EXPOSURE_ON_PHONE_MANA = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.SUMMARY_DATE = null; } else {
      this.SUMMARY_DATE = __cur_str;
    }

    } catch (RuntimeException e) {    throw new RuntimeException("Can't parse input data: '" + __cur_str + "'", e);    }  }

  private void __loadFromFields0(Iterator<String> __it) {
    String __cur_str = null;
    try {
    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.IMEI = null; } else {
      this.IMEI = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.EXPOSURE_ON_PHONE_LATEST = null; } else {
      this.EXPOSURE_ON_PHONE_LATEST = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.EXPOSURE_SUM_LATEST = null; } else {
      this.EXPOSURE_SUM_LATEST = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.EXPOSURE_ON_PHONE_FOLLOW = null; } else {
      this.EXPOSURE_ON_PHONE_FOLLOW = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.EXPOSURE_SUM_FOLLOW = null; } else {
      this.EXPOSURE_SUM_FOLLOW = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.EXPOSURE_SUM_TOP = null; } else {
      this.EXPOSURE_SUM_TOP = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.EXPOSURE_ON_PHONE_TOP = null; } else {
      this.EXPOSURE_ON_PHONE_TOP = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.EXPOSURE_SUM_DESK = null; } else {
      this.EXPOSURE_SUM_DESK = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.EXPOSURE_ON_PHONE_DESK = null; } else {
      this.EXPOSURE_ON_PHONE_DESK = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.EXPOSURE_SUM_MANA = null; } else {
      this.EXPOSURE_SUM_MANA = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.EXPOSURE_ON_PHONE_MANA = null; } else {
      this.EXPOSURE_ON_PHONE_MANA = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.SUMMARY_DATE = null; } else {
      this.SUMMARY_DATE = __cur_str;
    }

    } catch (RuntimeException e) {    throw new RuntimeException("Can't parse input data: '" + __cur_str + "'", e);    }  }

  public Object clone() throws CloneNotSupportedException {
    PHONE_TABS_CLICK_SUMMARY o = (PHONE_TABS_CLICK_SUMMARY) super.clone();
    return o;
  }

  public void clone0(PHONE_TABS_CLICK_SUMMARY o) throws CloneNotSupportedException {
  }

  public Map<String, Object> getFieldMap() {
    Map<String, Object> __sqoop$field_map = new TreeMap<String, Object>();
    __sqoop$field_map.put("IMEI", this.IMEI);
    __sqoop$field_map.put("EXPOSURE_ON_PHONE_LATEST", this.EXPOSURE_ON_PHONE_LATEST);
    __sqoop$field_map.put("EXPOSURE_SUM_LATEST", this.EXPOSURE_SUM_LATEST);
    __sqoop$field_map.put("EXPOSURE_ON_PHONE_FOLLOW", this.EXPOSURE_ON_PHONE_FOLLOW);
    __sqoop$field_map.put("EXPOSURE_SUM_FOLLOW", this.EXPOSURE_SUM_FOLLOW);
    __sqoop$field_map.put("EXPOSURE_SUM_TOP", this.EXPOSURE_SUM_TOP);
    __sqoop$field_map.put("EXPOSURE_ON_PHONE_TOP", this.EXPOSURE_ON_PHONE_TOP);
    __sqoop$field_map.put("EXPOSURE_SUM_DESK", this.EXPOSURE_SUM_DESK);
    __sqoop$field_map.put("EXPOSURE_ON_PHONE_DESK", this.EXPOSURE_ON_PHONE_DESK);
    __sqoop$field_map.put("EXPOSURE_SUM_MANA", this.EXPOSURE_SUM_MANA);
    __sqoop$field_map.put("EXPOSURE_ON_PHONE_MANA", this.EXPOSURE_ON_PHONE_MANA);
    __sqoop$field_map.put("SUMMARY_DATE", this.SUMMARY_DATE);
    return __sqoop$field_map;
  }

  public void getFieldMap0(Map<String, Object> __sqoop$field_map) {
    __sqoop$field_map.put("IMEI", this.IMEI);
    __sqoop$field_map.put("EXPOSURE_ON_PHONE_LATEST", this.EXPOSURE_ON_PHONE_LATEST);
    __sqoop$field_map.put("EXPOSURE_SUM_LATEST", this.EXPOSURE_SUM_LATEST);
    __sqoop$field_map.put("EXPOSURE_ON_PHONE_FOLLOW", this.EXPOSURE_ON_PHONE_FOLLOW);
    __sqoop$field_map.put("EXPOSURE_SUM_FOLLOW", this.EXPOSURE_SUM_FOLLOW);
    __sqoop$field_map.put("EXPOSURE_SUM_TOP", this.EXPOSURE_SUM_TOP);
    __sqoop$field_map.put("EXPOSURE_ON_PHONE_TOP", this.EXPOSURE_ON_PHONE_TOP);
    __sqoop$field_map.put("EXPOSURE_SUM_DESK", this.EXPOSURE_SUM_DESK);
    __sqoop$field_map.put("EXPOSURE_ON_PHONE_DESK", this.EXPOSURE_ON_PHONE_DESK);
    __sqoop$field_map.put("EXPOSURE_SUM_MANA", this.EXPOSURE_SUM_MANA);
    __sqoop$field_map.put("EXPOSURE_ON_PHONE_MANA", this.EXPOSURE_ON_PHONE_MANA);
    __sqoop$field_map.put("SUMMARY_DATE", this.SUMMARY_DATE);
  }

  public void setField(String __fieldName, Object __fieldVal) {
    if ("IMEI".equals(__fieldName)) {
      this.IMEI = (String) __fieldVal;
    }
    else    if ("EXPOSURE_ON_PHONE_LATEST".equals(__fieldName)) {
      this.EXPOSURE_ON_PHONE_LATEST = (Integer) __fieldVal;
    }
    else    if ("EXPOSURE_SUM_LATEST".equals(__fieldName)) {
      this.EXPOSURE_SUM_LATEST = (Integer) __fieldVal;
    }
    else    if ("EXPOSURE_ON_PHONE_FOLLOW".equals(__fieldName)) {
      this.EXPOSURE_ON_PHONE_FOLLOW = (Integer) __fieldVal;
    }
    else    if ("EXPOSURE_SUM_FOLLOW".equals(__fieldName)) {
      this.EXPOSURE_SUM_FOLLOW = (Integer) __fieldVal;
    }
    else    if ("EXPOSURE_SUM_TOP".equals(__fieldName)) {
      this.EXPOSURE_SUM_TOP = (Integer) __fieldVal;
    }
    else    if ("EXPOSURE_ON_PHONE_TOP".equals(__fieldName)) {
      this.EXPOSURE_ON_PHONE_TOP = (Integer) __fieldVal;
    }
    else    if ("EXPOSURE_SUM_DESK".equals(__fieldName)) {
      this.EXPOSURE_SUM_DESK = (Integer) __fieldVal;
    }
    else    if ("EXPOSURE_ON_PHONE_DESK".equals(__fieldName)) {
      this.EXPOSURE_ON_PHONE_DESK = (Integer) __fieldVal;
    }
    else    if ("EXPOSURE_SUM_MANA".equals(__fieldName)) {
      this.EXPOSURE_SUM_MANA = (Integer) __fieldVal;
    }
    else    if ("EXPOSURE_ON_PHONE_MANA".equals(__fieldName)) {
      this.EXPOSURE_ON_PHONE_MANA = (Integer) __fieldVal;
    }
    else    if ("SUMMARY_DATE".equals(__fieldName)) {
      this.SUMMARY_DATE = (String) __fieldVal;
    }
    else {
      throw new RuntimeException("No such field: " + __fieldName);
    }
  }
  public boolean setField0(String __fieldName, Object __fieldVal) {
    if ("IMEI".equals(__fieldName)) {
      this.IMEI = (String) __fieldVal;
      return true;
    }
    else    if ("EXPOSURE_ON_PHONE_LATEST".equals(__fieldName)) {
      this.EXPOSURE_ON_PHONE_LATEST = (Integer) __fieldVal;
      return true;
    }
    else    if ("EXPOSURE_SUM_LATEST".equals(__fieldName)) {
      this.EXPOSURE_SUM_LATEST = (Integer) __fieldVal;
      return true;
    }
    else    if ("EXPOSURE_ON_PHONE_FOLLOW".equals(__fieldName)) {
      this.EXPOSURE_ON_PHONE_FOLLOW = (Integer) __fieldVal;
      return true;
    }
    else    if ("EXPOSURE_SUM_FOLLOW".equals(__fieldName)) {
      this.EXPOSURE_SUM_FOLLOW = (Integer) __fieldVal;
      return true;
    }
    else    if ("EXPOSURE_SUM_TOP".equals(__fieldName)) {
      this.EXPOSURE_SUM_TOP = (Integer) __fieldVal;
      return true;
    }
    else    if ("EXPOSURE_ON_PHONE_TOP".equals(__fieldName)) {
      this.EXPOSURE_ON_PHONE_TOP = (Integer) __fieldVal;
      return true;
    }
    else    if ("EXPOSURE_SUM_DESK".equals(__fieldName)) {
      this.EXPOSURE_SUM_DESK = (Integer) __fieldVal;
      return true;
    }
    else    if ("EXPOSURE_ON_PHONE_DESK".equals(__fieldName)) {
      this.EXPOSURE_ON_PHONE_DESK = (Integer) __fieldVal;
      return true;
    }
    else    if ("EXPOSURE_SUM_MANA".equals(__fieldName)) {
      this.EXPOSURE_SUM_MANA = (Integer) __fieldVal;
      return true;
    }
    else    if ("EXPOSURE_ON_PHONE_MANA".equals(__fieldName)) {
      this.EXPOSURE_ON_PHONE_MANA = (Integer) __fieldVal;
      return true;
    }
    else    if ("SUMMARY_DATE".equals(__fieldName)) {
      this.SUMMARY_DATE = (String) __fieldVal;
      return true;
    }
    else {
      return false;    }
  }
}

// ORM class for table 'PHONE_TABS_CLICK'
// WARNING: This class is AUTO-GENERATED. Modify at your own risk.
//
// Debug information:
// Generated date: Tue Nov 24 20:05:42 CST 2015
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

public class PHONE_TABS_CLICK extends SqoopRecord  implements DBWritable, Writable {
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
  public PHONE_TABS_CLICK with_IMEI(String IMEI) {
    this.IMEI = IMEI;
    return this;
  }
  private String TAB_TYPE;
  public String get_TAB_TYPE() {
    return TAB_TYPE;
  }
  public void set_TAB_TYPE(String TAB_TYPE) {
    this.TAB_TYPE = TAB_TYPE;
  }
  public PHONE_TABS_CLICK with_TAB_TYPE(String TAB_TYPE) {
    this.TAB_TYPE = TAB_TYPE;
    return this;
  }
  private Integer EXPOSURE_ON_PHONE;
  public Integer get_EXPOSURE_ON_PHONE() {
    return EXPOSURE_ON_PHONE;
  }
  public void set_EXPOSURE_ON_PHONE(Integer EXPOSURE_ON_PHONE) {
    this.EXPOSURE_ON_PHONE = EXPOSURE_ON_PHONE;
  }
  public PHONE_TABS_CLICK with_EXPOSURE_ON_PHONE(Integer EXPOSURE_ON_PHONE) {
    this.EXPOSURE_ON_PHONE = EXPOSURE_ON_PHONE;
    return this;
  }
  private Integer EXPOSURE_SUM;
  public Integer get_EXPOSURE_SUM() {
    return EXPOSURE_SUM;
  }
  public void set_EXPOSURE_SUM(Integer EXPOSURE_SUM) {
    this.EXPOSURE_SUM = EXPOSURE_SUM;
  }
  public PHONE_TABS_CLICK with_EXPOSURE_SUM(Integer EXPOSURE_SUM) {
    this.EXPOSURE_SUM = EXPOSURE_SUM;
    return this;
  }
  private String SUMMARY_DATE;
  public String get_SUMMARY_DATE() {
    return SUMMARY_DATE;
  }
  public void set_SUMMARY_DATE(String SUMMARY_DATE) {
    this.SUMMARY_DATE = SUMMARY_DATE;
  }
  public PHONE_TABS_CLICK with_SUMMARY_DATE(String SUMMARY_DATE) {
    this.SUMMARY_DATE = SUMMARY_DATE;
    return this;
  }
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (!(o instanceof PHONE_TABS_CLICK)) {
      return false;
    }
    PHONE_TABS_CLICK that = (PHONE_TABS_CLICK) o;
    boolean equal = true;
    equal = equal && (this.IMEI == null ? that.IMEI == null : this.IMEI.equals(that.IMEI));
    equal = equal && (this.TAB_TYPE == null ? that.TAB_TYPE == null : this.TAB_TYPE.equals(that.TAB_TYPE));
    equal = equal && (this.EXPOSURE_ON_PHONE == null ? that.EXPOSURE_ON_PHONE == null : this.EXPOSURE_ON_PHONE.equals(that.EXPOSURE_ON_PHONE));
    equal = equal && (this.EXPOSURE_SUM == null ? that.EXPOSURE_SUM == null : this.EXPOSURE_SUM.equals(that.EXPOSURE_SUM));
    equal = equal && (this.SUMMARY_DATE == null ? that.SUMMARY_DATE == null : this.SUMMARY_DATE.equals(that.SUMMARY_DATE));
    return equal;
  }
  public boolean equals0(Object o) {
    if (this == o) {
      return true;
    }
    if (!(o instanceof PHONE_TABS_CLICK)) {
      return false;
    }
    PHONE_TABS_CLICK that = (PHONE_TABS_CLICK) o;
    boolean equal = true;
    equal = equal && (this.IMEI == null ? that.IMEI == null : this.IMEI.equals(that.IMEI));
    equal = equal && (this.TAB_TYPE == null ? that.TAB_TYPE == null : this.TAB_TYPE.equals(that.TAB_TYPE));
    equal = equal && (this.EXPOSURE_ON_PHONE == null ? that.EXPOSURE_ON_PHONE == null : this.EXPOSURE_ON_PHONE.equals(that.EXPOSURE_ON_PHONE));
    equal = equal && (this.EXPOSURE_SUM == null ? that.EXPOSURE_SUM == null : this.EXPOSURE_SUM.equals(that.EXPOSURE_SUM));
    equal = equal && (this.SUMMARY_DATE == null ? that.SUMMARY_DATE == null : this.SUMMARY_DATE.equals(that.SUMMARY_DATE));
    return equal;
  }
  public void readFields(ResultSet __dbResults) throws SQLException {
    this.__cur_result_set = __dbResults;
    this.IMEI = JdbcWritableBridge.readString(1, __dbResults);
    this.TAB_TYPE = JdbcWritableBridge.readString(2, __dbResults);
    this.EXPOSURE_ON_PHONE = JdbcWritableBridge.readInteger(3, __dbResults);
    this.EXPOSURE_SUM = JdbcWritableBridge.readInteger(4, __dbResults);
    this.SUMMARY_DATE = JdbcWritableBridge.readString(5, __dbResults);
  }
  public void readFields0(ResultSet __dbResults) throws SQLException {
    this.IMEI = JdbcWritableBridge.readString(1, __dbResults);
    this.TAB_TYPE = JdbcWritableBridge.readString(2, __dbResults);
    this.EXPOSURE_ON_PHONE = JdbcWritableBridge.readInteger(3, __dbResults);
    this.EXPOSURE_SUM = JdbcWritableBridge.readInteger(4, __dbResults);
    this.SUMMARY_DATE = JdbcWritableBridge.readString(5, __dbResults);
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
    JdbcWritableBridge.writeString(TAB_TYPE, 2 + __off, 1, __dbStmt);
    JdbcWritableBridge.writeInteger(EXPOSURE_ON_PHONE, 3 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(EXPOSURE_SUM, 4 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeString(SUMMARY_DATE, 5 + __off, 12, __dbStmt);
    return 5;
  }
  public void write0(PreparedStatement __dbStmt, int __off) throws SQLException {
    JdbcWritableBridge.writeString(IMEI, 1 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(TAB_TYPE, 2 + __off, 1, __dbStmt);
    JdbcWritableBridge.writeInteger(EXPOSURE_ON_PHONE, 3 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(EXPOSURE_SUM, 4 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeString(SUMMARY_DATE, 5 + __off, 12, __dbStmt);
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
        this.TAB_TYPE = null;
    } else {
    this.TAB_TYPE = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.EXPOSURE_ON_PHONE = null;
    } else {
    this.EXPOSURE_ON_PHONE = Integer.valueOf(__dataIn.readInt());
    }
    if (__dataIn.readBoolean()) { 
        this.EXPOSURE_SUM = null;
    } else {
    this.EXPOSURE_SUM = Integer.valueOf(__dataIn.readInt());
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
    if (null == this.TAB_TYPE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, TAB_TYPE);
    }
    if (null == this.EXPOSURE_ON_PHONE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.EXPOSURE_ON_PHONE);
    }
    if (null == this.EXPOSURE_SUM) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.EXPOSURE_SUM);
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
    if (null == this.TAB_TYPE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, TAB_TYPE);
    }
    if (null == this.EXPOSURE_ON_PHONE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.EXPOSURE_ON_PHONE);
    }
    if (null == this.EXPOSURE_SUM) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.EXPOSURE_SUM);
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
    __sb.append(FieldFormatter.escapeAndEnclose(TAB_TYPE==null?"null":TAB_TYPE, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(EXPOSURE_ON_PHONE==null?"null":"" + EXPOSURE_ON_PHONE, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(EXPOSURE_SUM==null?"null":"" + EXPOSURE_SUM, delimiters));
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
    __sb.append(FieldFormatter.escapeAndEnclose(TAB_TYPE==null?"null":TAB_TYPE, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(EXPOSURE_ON_PHONE==null?"null":"" + EXPOSURE_ON_PHONE, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(EXPOSURE_SUM==null?"null":"" + EXPOSURE_SUM, delimiters));
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
    if (__cur_str.equals("\\N")) { this.TAB_TYPE = null; } else {
      this.TAB_TYPE = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.EXPOSURE_ON_PHONE = null; } else {
      this.EXPOSURE_ON_PHONE = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.EXPOSURE_SUM = null; } else {
      this.EXPOSURE_SUM = Integer.valueOf(__cur_str);
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
    if (__cur_str.equals("\\N")) { this.TAB_TYPE = null; } else {
      this.TAB_TYPE = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.EXPOSURE_ON_PHONE = null; } else {
      this.EXPOSURE_ON_PHONE = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.EXPOSURE_SUM = null; } else {
      this.EXPOSURE_SUM = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.SUMMARY_DATE = null; } else {
      this.SUMMARY_DATE = __cur_str;
    }

    } catch (RuntimeException e) {    throw new RuntimeException("Can't parse input data: '" + __cur_str + "'", e);    }  }

  public Object clone() throws CloneNotSupportedException {
    PHONE_TABS_CLICK o = (PHONE_TABS_CLICK) super.clone();
    return o;
  }

  public void clone0(PHONE_TABS_CLICK o) throws CloneNotSupportedException {
  }

  public Map<String, Object> getFieldMap() {
    Map<String, Object> __sqoop$field_map = new TreeMap<String, Object>();
    __sqoop$field_map.put("IMEI", this.IMEI);
    __sqoop$field_map.put("TAB_TYPE", this.TAB_TYPE);
    __sqoop$field_map.put("EXPOSURE_ON_PHONE", this.EXPOSURE_ON_PHONE);
    __sqoop$field_map.put("EXPOSURE_SUM", this.EXPOSURE_SUM);
    __sqoop$field_map.put("SUMMARY_DATE", this.SUMMARY_DATE);
    return __sqoop$field_map;
  }

  public void getFieldMap0(Map<String, Object> __sqoop$field_map) {
    __sqoop$field_map.put("IMEI", this.IMEI);
    __sqoop$field_map.put("TAB_TYPE", this.TAB_TYPE);
    __sqoop$field_map.put("EXPOSURE_ON_PHONE", this.EXPOSURE_ON_PHONE);
    __sqoop$field_map.put("EXPOSURE_SUM", this.EXPOSURE_SUM);
    __sqoop$field_map.put("SUMMARY_DATE", this.SUMMARY_DATE);
  }

  public void setField(String __fieldName, Object __fieldVal) {
    if ("IMEI".equals(__fieldName)) {
      this.IMEI = (String) __fieldVal;
    }
    else    if ("TAB_TYPE".equals(__fieldName)) {
      this.TAB_TYPE = (String) __fieldVal;
    }
    else    if ("EXPOSURE_ON_PHONE".equals(__fieldName)) {
      this.EXPOSURE_ON_PHONE = (Integer) __fieldVal;
    }
    else    if ("EXPOSURE_SUM".equals(__fieldName)) {
      this.EXPOSURE_SUM = (Integer) __fieldVal;
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
    else    if ("TAB_TYPE".equals(__fieldName)) {
      this.TAB_TYPE = (String) __fieldVal;
      return true;
    }
    else    if ("EXPOSURE_ON_PHONE".equals(__fieldName)) {
      this.EXPOSURE_ON_PHONE = (Integer) __fieldVal;
      return true;
    }
    else    if ("EXPOSURE_SUM".equals(__fieldName)) {
      this.EXPOSURE_SUM = (Integer) __fieldVal;
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

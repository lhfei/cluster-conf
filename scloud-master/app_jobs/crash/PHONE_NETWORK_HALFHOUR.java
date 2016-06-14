// ORM class for table 'PHONE_NETWORK_HALFHOUR'
// WARNING: This class is AUTO-GENERATED. Modify at your own risk.
//
// Debug information:
// Generated date: Fri Jan 15 19:35:47 CST 2016
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

public class PHONE_NETWORK_HALFHOUR extends SqoopRecord  implements DBWritable, Writable {
  private final int PROTOCOL_VERSION = 3;
  public int getClassFormatVersion() { return PROTOCOL_VERSION; }
  protected ResultSet __cur_result_set;
  private Long active_count;
  public Long get_active_count() {
    return active_count;
  }
  public void set_active_count(Long active_count) {
    this.active_count = active_count;
  }
  public PHONE_NETWORK_HALFHOUR with_active_count(Long active_count) {
    this.active_count = active_count;
    return this;
  }
  private String software_version;
  public String get_software_version() {
    return software_version;
  }
  public void set_software_version(String software_version) {
    this.software_version = software_version;
  }
  public PHONE_NETWORK_HALFHOUR with_software_version(String software_version) {
    this.software_version = software_version;
    return this;
  }
  private String external_model;
  public String get_external_model() {
    return external_model;
  }
  public void set_external_model(String external_model) {
    this.external_model = external_model;
  }
  public PHONE_NETWORK_HALFHOUR with_external_model(String external_model) {
    this.external_model = external_model;
    return this;
  }
  private String group_title;
  public String get_group_title() {
    return group_title;
  }
  public void set_group_title(String group_title) {
    this.group_title = group_title;
  }
  public PHONE_NETWORK_HALFHOUR with_group_title(String group_title) {
    this.group_title = group_title;
    return this;
  }
  private String summary_date;
  public String get_summary_date() {
    return summary_date;
  }
  public void set_summary_date(String summary_date) {
    this.summary_date = summary_date;
  }
  public PHONE_NETWORK_HALFHOUR with_summary_date(String summary_date) {
    this.summary_date = summary_date;
    return this;
  }
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (!(o instanceof PHONE_NETWORK_HALFHOUR)) {
      return false;
    }
    PHONE_NETWORK_HALFHOUR that = (PHONE_NETWORK_HALFHOUR) o;
    boolean equal = true;
    equal = equal && (this.active_count == null ? that.active_count == null : this.active_count.equals(that.active_count));
    equal = equal && (this.software_version == null ? that.software_version == null : this.software_version.equals(that.software_version));
    equal = equal && (this.external_model == null ? that.external_model == null : this.external_model.equals(that.external_model));
    equal = equal && (this.group_title == null ? that.group_title == null : this.group_title.equals(that.group_title));
    equal = equal && (this.summary_date == null ? that.summary_date == null : this.summary_date.equals(that.summary_date));
    return equal;
  }
  public boolean equals0(Object o) {
    if (this == o) {
      return true;
    }
    if (!(o instanceof PHONE_NETWORK_HALFHOUR)) {
      return false;
    }
    PHONE_NETWORK_HALFHOUR that = (PHONE_NETWORK_HALFHOUR) o;
    boolean equal = true;
    equal = equal && (this.active_count == null ? that.active_count == null : this.active_count.equals(that.active_count));
    equal = equal && (this.software_version == null ? that.software_version == null : this.software_version.equals(that.software_version));
    equal = equal && (this.external_model == null ? that.external_model == null : this.external_model.equals(that.external_model));
    equal = equal && (this.group_title == null ? that.group_title == null : this.group_title.equals(that.group_title));
    equal = equal && (this.summary_date == null ? that.summary_date == null : this.summary_date.equals(that.summary_date));
    return equal;
  }
  public void readFields(ResultSet __dbResults) throws SQLException {
    this.__cur_result_set = __dbResults;
    this.active_count = JdbcWritableBridge.readLong(1, __dbResults);
    this.software_version = JdbcWritableBridge.readString(2, __dbResults);
    this.external_model = JdbcWritableBridge.readString(3, __dbResults);
    this.group_title = JdbcWritableBridge.readString(4, __dbResults);
    this.summary_date = JdbcWritableBridge.readString(5, __dbResults);
  }
  public void readFields0(ResultSet __dbResults) throws SQLException {
    this.active_count = JdbcWritableBridge.readLong(1, __dbResults);
    this.software_version = JdbcWritableBridge.readString(2, __dbResults);
    this.external_model = JdbcWritableBridge.readString(3, __dbResults);
    this.group_title = JdbcWritableBridge.readString(4, __dbResults);
    this.summary_date = JdbcWritableBridge.readString(5, __dbResults);
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
    JdbcWritableBridge.writeLong(active_count, 1 + __off, -5, __dbStmt);
    JdbcWritableBridge.writeString(software_version, 2 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(external_model, 3 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(group_title, 4 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(summary_date, 5 + __off, 12, __dbStmt);
    return 5;
  }
  public void write0(PreparedStatement __dbStmt, int __off) throws SQLException {
    JdbcWritableBridge.writeLong(active_count, 1 + __off, -5, __dbStmt);
    JdbcWritableBridge.writeString(software_version, 2 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(external_model, 3 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(group_title, 4 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(summary_date, 5 + __off, 12, __dbStmt);
  }
  public void readFields(DataInput __dataIn) throws IOException {
this.readFields0(__dataIn);  }
  public void readFields0(DataInput __dataIn) throws IOException {
    if (__dataIn.readBoolean()) { 
        this.active_count = null;
    } else {
    this.active_count = Long.valueOf(__dataIn.readLong());
    }
    if (__dataIn.readBoolean()) { 
        this.software_version = null;
    } else {
    this.software_version = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.external_model = null;
    } else {
    this.external_model = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.group_title = null;
    } else {
    this.group_title = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.summary_date = null;
    } else {
    this.summary_date = Text.readString(__dataIn);
    }
  }
  public void write(DataOutput __dataOut) throws IOException {
    if (null == this.active_count) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeLong(this.active_count);
    }
    if (null == this.software_version) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, software_version);
    }
    if (null == this.external_model) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, external_model);
    }
    if (null == this.group_title) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, group_title);
    }
    if (null == this.summary_date) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, summary_date);
    }
  }
  public void write0(DataOutput __dataOut) throws IOException {
    if (null == this.active_count) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeLong(this.active_count);
    }
    if (null == this.software_version) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, software_version);
    }
    if (null == this.external_model) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, external_model);
    }
    if (null == this.group_title) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, group_title);
    }
    if (null == this.summary_date) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, summary_date);
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
    __sb.append(FieldFormatter.escapeAndEnclose(active_count==null?"null":"" + active_count, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(software_version==null?"null":software_version, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(external_model==null?"null":external_model, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(group_title==null?"null":group_title, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(summary_date==null?"null":summary_date, delimiters));
    if (useRecordDelim) {
      __sb.append(delimiters.getLinesTerminatedBy());
    }
    return __sb.toString();
  }
  public void toString0(DelimiterSet delimiters, StringBuilder __sb, char fieldDelim) {
    __sb.append(FieldFormatter.escapeAndEnclose(active_count==null?"null":"" + active_count, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(software_version==null?"null":software_version, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(external_model==null?"null":external_model, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(group_title==null?"null":group_title, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(summary_date==null?"null":summary_date, delimiters));
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
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.active_count = null; } else {
      this.active_count = Long.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.software_version = null; } else {
      this.software_version = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.external_model = null; } else {
      this.external_model = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.group_title = null; } else {
      this.group_title = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.summary_date = null; } else {
      this.summary_date = __cur_str;
    }

    } catch (RuntimeException e) {    throw new RuntimeException("Can't parse input data: '" + __cur_str + "'", e);    }  }

  private void __loadFromFields0(Iterator<String> __it) {
    String __cur_str = null;
    try {
    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.active_count = null; } else {
      this.active_count = Long.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.software_version = null; } else {
      this.software_version = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.external_model = null; } else {
      this.external_model = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.group_title = null; } else {
      this.group_title = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.summary_date = null; } else {
      this.summary_date = __cur_str;
    }

    } catch (RuntimeException e) {    throw new RuntimeException("Can't parse input data: '" + __cur_str + "'", e);    }  }

  public Object clone() throws CloneNotSupportedException {
    PHONE_NETWORK_HALFHOUR o = (PHONE_NETWORK_HALFHOUR) super.clone();
    return o;
  }

  public void clone0(PHONE_NETWORK_HALFHOUR o) throws CloneNotSupportedException {
  }

  public Map<String, Object> getFieldMap() {
    Map<String, Object> __sqoop$field_map = new TreeMap<String, Object>();
    __sqoop$field_map.put("active_count", this.active_count);
    __sqoop$field_map.put("software_version", this.software_version);
    __sqoop$field_map.put("external_model", this.external_model);
    __sqoop$field_map.put("group_title", this.group_title);
    __sqoop$field_map.put("summary_date", this.summary_date);
    return __sqoop$field_map;
  }

  public void getFieldMap0(Map<String, Object> __sqoop$field_map) {
    __sqoop$field_map.put("active_count", this.active_count);
    __sqoop$field_map.put("software_version", this.software_version);
    __sqoop$field_map.put("external_model", this.external_model);
    __sqoop$field_map.put("group_title", this.group_title);
    __sqoop$field_map.put("summary_date", this.summary_date);
  }

  public void setField(String __fieldName, Object __fieldVal) {
    if ("active_count".equals(__fieldName)) {
      this.active_count = (Long) __fieldVal;
    }
    else    if ("software_version".equals(__fieldName)) {
      this.software_version = (String) __fieldVal;
    }
    else    if ("external_model".equals(__fieldName)) {
      this.external_model = (String) __fieldVal;
    }
    else    if ("group_title".equals(__fieldName)) {
      this.group_title = (String) __fieldVal;
    }
    else    if ("summary_date".equals(__fieldName)) {
      this.summary_date = (String) __fieldVal;
    }
    else {
      throw new RuntimeException("No such field: " + __fieldName);
    }
  }
  public boolean setField0(String __fieldName, Object __fieldVal) {
    if ("active_count".equals(__fieldName)) {
      this.active_count = (Long) __fieldVal;
      return true;
    }
    else    if ("software_version".equals(__fieldName)) {
      this.software_version = (String) __fieldVal;
      return true;
    }
    else    if ("external_model".equals(__fieldName)) {
      this.external_model = (String) __fieldVal;
      return true;
    }
    else    if ("group_title".equals(__fieldName)) {
      this.group_title = (String) __fieldVal;
      return true;
    }
    else    if ("summary_date".equals(__fieldName)) {
      this.summary_date = (String) __fieldVal;
      return true;
    }
    else {
      return false;    }
  }
}

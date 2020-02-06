/*
 * Copyright 2012-2019 the original author or authors.
 *
 * Generate by Spring Data MyBatis (https://github.com/hatunet/spring-data-mybatis).
 */
package {{metadata.packageName}};

import java.util.ArrayList;
import java.util.List;

/**
 * {{metadata.exampleClassSimpleName}}.
 *
 * @author Generated by Spring Data MyBatis
 * @since 1.0.0
 */
public class {{metadata.exampleClassSimpleName}} {

	protected String orderByClause;

	protected boolean distinct;

	protected List<Criteria> oredCriteria;

	public {{metadata.exampleClassSimpleName}}() {
		this.oredCriteria = new ArrayList<>();
	}

	public void setOrderByClause(String orderByClause) {
		this.orderByClause = orderByClause;
	}

	public String getOrderByClause() {
		return this.orderByClause;
	}

	public void setDistinct(boolean distinct) {
		this.distinct = distinct;
	}

	public boolean isDistinct() {
		return this.distinct;
	}

	public List<Criteria> getOredCriteria() {
		return this.oredCriteria;
	}

	public void or(Criteria criteria) {
		this.oredCriteria.add(criteria);
	}

	public Criteria or() {
		Criteria criteria = this.createCriteriaInternal();
		this.oredCriteria.add(criteria);
		return criteria;
	}

	public Criteria createCriteria() {
		Criteria criteria = this.createCriteriaInternal();
		if (this.oredCriteria.size() == 0) {
			this.oredCriteria.add(criteria);
		}
		return criteria;
	}

	protected Criteria createCriteriaInternal() {
		Criteria criteria = new Criteria();
		return criteria;
	}

	public void clear() {
		this.oredCriteria.clear();
		this.orderByClause = null;
		this.distinct = false;
	}

	protected abstract static class GeneratedCriteria {

		protected List<Criterion> criteria;

		protected GeneratedCriteria() {
			super();
			this.criteria = new ArrayList<>();
		}

		public boolean isValid() {
			return this.criteria.size() > 0;
		}

		public List<Criterion> getAllCriteria() {
			return this.criteria;
		}

		public List<Criterion> getCriteria() {
			return this.criteria;
		}

		protected void addCriterion(String condition) {
			if (condition == null) {
				throw new RuntimeException("Value for condition cannot be null");
			}
			this.criteria.add(new Criterion(condition));
		}

		protected void addCriterion(String condition, Object value, String property) {
			if (value == null) {
				throw new RuntimeException("Value for " + property + " cannot be null");
			}
			this.criteria.add(new Criterion(condition, value));
		}

		protected void addCriterion(String condition, Object value1, Object value2, String property) {
			if (value1 == null || value2 == null) {
				throw new RuntimeException("Between values for " + property + " cannot be null");
			}
			this.criteria.add(new Criterion(condition, value1, value2));
		}
{{#metadata.columns}}
		public Criteria and{{upperPropertyName}}IsNull() {
			this.addCriterion("{{name}} is null");
			return (Criteria) this;
		}

		public Criteria and{{upperPropertyName}}IsNotNull() {
			this.addCriterion("{{name}} is not null");
			return (Criteria) this;
		}

		public Criteria and{{upperPropertyName}}EqualTo({{type}} value) {
			this.addCriterion("{{name}} =", value, "{{propertyName}}");
			return (Criteria) this;
		}

		public Criteria and{{upperPropertyName}}NotEqualTo({{type}} value) {
			this.addCriterion("{{name}} <>", value, "{{propertyName}}");
			return (Criteria) this;
		}

		public Criteria and{{upperPropertyName}}GreaterThan({{type}} value) {
			this.addCriterion("{{name}} >", value, "{{propertyName}}");
			return (Criteria) this;
		}

		public Criteria and{{upperPropertyName}}GreaterThanOrEqualTo({{type}} value) {
			this.addCriterion("{{name}} >=", value, "{{propertyName}}");
			return (Criteria) this;
		}

		public Criteria and{{upperPropertyName}}LessThan({{type}} value) {
			this.addCriterion("{{name}} <", value, "{{propertyName}}");
			return (Criteria) this;
		}

		public Criteria and{{upperPropertyName}}LessThanOrEqualTo({{type}} value) {
			this.addCriterion("{{name}} <=", value, "{{propertyName}}");
			return (Criteria) this;
		}

		public Criteria and{{upperPropertyName}}In(List<{{type}}> values) {
			this.addCriterion("{{name}} in", values, "{{propertyName}}");
			return (Criteria) this;
		}

		public Criteria and{{upperPropertyName}}NotIn(List<{{type}}> values) {
			this.addCriterion("{{name}} not in", values, "{{propertyName}}");
			return (Criteria) this;
		}

		public Criteria and{{upperPropertyName}}Between({{type}} value1, {{type}} value2) {
			this.addCriterion("{{name}} between", value1, value2, "{{propertyName}}");
			return (Criteria) this;
		}

		public Criteria and{{upperPropertyName}}NotBetween({{type}} value1, {{type}} value2) {
			this.addCriterion("{{name}} not between", value1, value2, "{{propertyName}}");
			return (Criteria) this;
		}
{{/metadata.columns}}

	}

	public static class Criteria extends GeneratedCriteria {

		protected Criteria() {
			super();
		}

	}

	public static class Criterion {

		private String condition;

		private Object value;

		private Object secondValue;

		private boolean noValue;

		private boolean singleValue;

		private boolean betweenValue;

		private boolean listValue;

		private String typeHandler;

		public String getCondition() {
			return this.condition;
		}

		public Object getValue() {
			return this.value;
		}

		public Object getSecondValue() {
			return this.secondValue;
		}

		public boolean isNoValue() {
			return this.noValue;
		}

		public boolean isSingleValue() {
			return this.singleValue;
		}

		public boolean isBetweenValue() {
			return this.betweenValue;
		}

		public boolean isListValue() {
			return this.listValue;
		}

		public String getTypeHandler() {
			return this.typeHandler;
		}

		protected Criterion(String condition) {
			super();
			this.condition = condition;
			this.typeHandler = null;
			this.noValue = true;
		}

		protected Criterion(String condition, Object value, String typeHandler) {
			super();
			this.condition = condition;
			this.value = value;
			this.typeHandler = typeHandler;
			if (value instanceof List<?>) {
				this.listValue = true;
			}
			else {
				this.singleValue = true;
			}
		}

		protected Criterion(String condition, Object value) {
			this(condition, value, null);
		}

		protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
			super();
			this.condition = condition;
			this.value = value;
			this.secondValue = secondValue;
			this.typeHandler = typeHandler;
			this.betweenValue = true;
		}

		protected Criterion(String condition, Object value, Object secondValue) {
			this(condition, value, secondValue, null);
		}

	}

}
Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2321169FA3E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Feb 2023 18:34:15 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0AF103EF14
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Feb 2023 17:34:14 +0000 (UTC)
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by lists.linaro.org (Postfix) with ESMTPS id 2E3123EA56
	for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Feb 2023 17:33:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=P8lCFfGD;
	spf=none (lists.linaro.org: domain of tvrtko.ursulin@linux.intel.com has no SPF policy when checking 134.134.136.20) smtp.mailfrom=tvrtko.ursulin@linux.intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1677087234; x=1708623234;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=dBfK1f9SoIdQd//p3pK+J5jmUGdNq+Hb8SM5LrvByCw=;
  b=P8lCFfGDPzXNw6pFFWArYMCRDAL/xrwKgHh6jn1SfoC3F8On0TSzfeAD
   +R4o+pdlmU8KOt9mLNg22EQseMUhkD5M68d83kiBdBUmiYUlzwzr0/H/1
   nlJLJx0eng5WdqwqH55lPKhqJ5UVfB3bhREVHVrVnKHWF1RXwRMavnJ4m
   A9WGb/4lmNGfSzA/yEIIp6Sn1HqQdEVI8Ez2IQwfQMWhumB+5v8pmxdgl
   tYdoAOBU0JL+3okRVBJxXgIkBePMzIhFoImnipiHP5U7853w0BwMiomRa
   qyk7aI81WAVNeJmLMHiNYNcYhivo5AY3aOAymbqwQXil6Djc3hLliEc6F
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="321129861"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000";
   d="scan'208";a="321129861"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Feb 2023 09:33:47 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="704541133"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000";
   d="scan'208";a="704541133"
Received: from hhammad-mobl1.ger.corp.intel.com (HELO [10.213.231.87]) ([10.213.231.87])
  by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Feb 2023 09:33:43 -0800
Message-ID: <d7b0614e-2cc3-1180-3571-409204ac5b00@linux.intel.com>
Date: Wed, 22 Feb 2023 17:33:41 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Rob Clark <robdclark@chromium.org>
References: <20230218211608.1630586-1-robdclark@gmail.com>
 <20230218211608.1630586-2-robdclark@gmail.com>
 <b65a2fe2-6f68-2116-9599-2940e66d166b@linux.intel.com>
 <21f36640-3229-0b46-31a2-a47efc5be934@amd.com>
 <b8a16579-4be7-8e14-01e4-9d17c1570c8b@linux.intel.com>
 <CAJs_Fx61OpgFo_kSLoy+2z8mS=wcdK8eZfQBA6dQm9p0=qLU2g@mail.gmail.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <CAJs_Fx61OpgFo_kSLoy+2z8mS=wcdK8eZfQBA6dQm9p0=qLU2g@mail.gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2E3123EA56
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.90 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[134.134.136.20:from];
	R_SPF_NA(0.00)[no SPF record];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:4983, ipnet:134.134.136.0/24, country:US];
	RCPT_COUNT_TWELVE(0.00)[15];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,gmail.com,lists.freedesktop.org,padovan.org,intel.com,daenzer.net,vger.kernel.org,linaro.org,lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	HAS_ORG_HEADER(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[]
Message-ID-Hash: SWSVDQSIRWD4B2XWTDC5RYTQ5KXALYYX
X-Message-ID-Hash: SWSVDQSIRWD4B2XWTDC5RYTQ5KXALYYX
X-MailFrom: tvrtko.ursulin@linux.intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, Rob Clark <robdclark@gmail.com>, dri-devel@lists.freedesktop.org, Gustavo Padovan <gustavo@padovan.org>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>, open list <linux-kernel@vger.kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Pekka Paalanen <ppaalanen@gmail.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 01/14] dma-buf/dma-fence: Add deadline awareness
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SWSVDQSIRWD4B2XWTDC5RYTQ5KXALYYX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQpPbiAyMi8wMi8yMDIzIDE3OjE2LCBSb2IgQ2xhcmsgd3JvdGU6DQo+IE9uIFdlZCwgRmViIDIy
LCAyMDIzIGF0IDk6MDUgQU0gVHZydGtvIFVyc3VsaW4NCj4gPHR2cnRrby51cnN1bGluQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6DQo+Pg0KPj4NCj4+IE9uIDIyLzAyLzIwMjMgMTU6MjgsIENocmlz
dGlhbiBLw7ZuaWcgd3JvdGU6DQo+Pj4gQW0gMjIuMDIuMjMgdW0gMTE6MjMgc2NocmllYiBUdnJ0
a28gVXJzdWxpbjoNCj4+Pj4NCj4+Pj4gT24gMTgvMDIvMjAyMyAyMToxNSwgUm9iIENsYXJrIHdy
b3RlOg0KPj4+Pj4gRnJvbTogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hyb21pdW0ub3JnPg0KPj4+
Pj4NCj4+Pj4+IEFkZCBhIHdheSB0byBoaW50IHRvIHRoZSBmZW5jZSBzaWduYWxlciBvZiBhbiB1
cGNvbWluZyBkZWFkbGluZSwgc3VjaCBhcw0KPj4+Pj4gdmJsYW5rLCB3aGljaCB0aGUgZmVuY2Ug
d2FpdGVyIHdvdWxkIHByZWZlciBub3QgdG8gbWlzcy4gIFRoaXMgaXMgdG8gYWlkDQo+Pj4+PiB0
aGUgZmVuY2Ugc2lnbmFsZXIgaW4gbWFraW5nIHBvd2VyIG1hbmFnZW1lbnQgZGVjaXNpb25zLCBs
aWtlIGJvb3N0aW5nDQo+Pj4+PiBmcmVxdWVuY3kgYXMgdGhlIGRlYWRsaW5lIGFwcHJvYWNoZXMg
YW5kIGF3YXJlbmVzcyBvZiBtaXNzaW5nIGRlYWRsaW5lcw0KPj4+Pj4gc28gdGhhdCBjYW4gYmUg
ZmFjdG9yZWQgaW4gdG8gdGhlIGZyZXF1ZW5jeSBzY2FsaW5nLg0KPj4+Pj4NCj4+Pj4+IHYyOiBE
cm9wIGRtYV9mZW5jZTo6ZGVhZGxpbmUgYW5kIHJlbGF0ZWQgbG9naWMgdG8gZmlsdGVyIGR1cGxp
Y2F0ZQ0KPj4+Pj4gICAgICAgZGVhZGxpbmVzLCB0byBhdm9pZCBpbmNyZWFzaW5nIGRtYV9mZW5j
ZSBzaXplLiAgVGhlIGZlbmNlLWNvbnRleHQNCj4+Pj4+ICAgICAgIGltcGxlbWVudGF0aW9uIHdp
bGwgbmVlZCBzaW1pbGFyIGxvZ2ljIHRvIHRyYWNrIGRlYWRsaW5lcyBvZiBhbGwNCj4+Pj4+ICAg
ICAgIHRoZSBmZW5jZXMgb24gdGhlIHNhbWUgdGltZWxpbmUuICBbY2tvZW5pZ10NCj4+Pj4+IHYz
OiBDbGFyaWZ5IGxvY2tpbmcgd3J0LiBzZXRfZGVhZGxpbmUgY2FsbGJhY2sNCj4+Pj4+DQo+Pj4+
PiBTaWduZWQtb2ZmLWJ5OiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+DQo+Pj4+
PiBSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29t
Pg0KPj4+Pj4gLS0tDQo+Pj4+PiAgICBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgfCAyMCAr
KysrKysrKysrKysrKysrKysrKw0KPj4+Pj4gICAgaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaCAg
IHwgMjAgKysrKysrKysrKysrKysrKysrKysNCj4+Pj4+ICAgIDIgZmlsZXMgY2hhbmdlZCwgNDAg
aW5zZXJ0aW9ucygrKQ0KPj4+Pj4NCj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYv
ZG1hLWZlbmNlLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4+Pj4+IGluZGV4IDBk
ZTA0ODJjZDM2ZS4uNzYzYjMyNjI3Njg0IDEwMDY0NA0KPj4+Pj4gLS0tIGEvZHJpdmVycy9kbWEt
YnVmL2RtYS1mZW5jZS5jDQo+Pj4+PiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMN
Cj4+Pj4+IEBAIC05MTIsNiArOTEyLDI2IEBAIGRtYV9mZW5jZV93YWl0X2FueV90aW1lb3V0KHN0
cnVjdCBkbWFfZmVuY2UNCj4+Pj4+ICoqZmVuY2VzLCB1aW50MzJfdCBjb3VudCwNCj4+Pj4+ICAg
IH0NCj4+Pj4+ICAgIEVYUE9SVF9TWU1CT0woZG1hX2ZlbmNlX3dhaXRfYW55X3RpbWVvdXQpOw0K
Pj4+Pj4gICAgKw0KPj4+Pj4gKy8qKg0KPj4+Pj4gKyAqIGRtYV9mZW5jZV9zZXRfZGVhZGxpbmUg
LSBzZXQgZGVzaXJlZCBmZW5jZS13YWl0IGRlYWRsaW5lDQo+Pj4+PiArICogQGZlbmNlOiAgICB0
aGUgZmVuY2UgdGhhdCBpcyB0byBiZSB3YWl0ZWQgb24NCj4+Pj4+ICsgKiBAZGVhZGxpbmU6IHRo
ZSB0aW1lIGJ5IHdoaWNoIHRoZSB3YWl0ZXIgaG9wZXMgZm9yIHRoZSBmZW5jZSB0byBiZQ0KPj4+
Pj4gKyAqICAgICAgICAgICAgc2lnbmFsZWQNCj4+Pj4+ICsgKg0KPj4+Pj4gKyAqIEluZm9ybSB0
aGUgZmVuY2Ugc2lnbmFsZXIgb2YgYW4gdXBjb21pbmcgZGVhZGxpbmUsIHN1Y2ggYXMNCj4+Pj4+
IHZibGFuaywgYnkNCj4+Pj4+ICsgKiB3aGljaCBwb2ludCB0aGUgd2FpdGVyIHdvdWxkIHByZWZl
ciB0aGUgZmVuY2UgdG8gYmUgc2lnbmFsZWQgYnkuDQo+Pj4+PiBUaGlzDQo+Pj4+PiArICogaXMg
aW50ZW5kZWQgdG8gZ2l2ZSBmZWVkYmFjayB0byB0aGUgZmVuY2Ugc2lnbmFsZXIgdG8gYWlkIGlu
IHBvd2VyDQo+Pj4+PiArICogbWFuYWdlbWVudCBkZWNpc2lvbnMsIHN1Y2ggYXMgYm9vc3Rpbmcg
R1BVIGZyZXF1ZW5jeSBpZiBhIHBlcmlvZGljDQo+Pj4+PiArICogdmJsYW5rIGRlYWRsaW5lIGlz
IGFwcHJvYWNoaW5nLg0KPj4+Pj4gKyAqLw0KPj4+Pj4gK3ZvaWQgZG1hX2ZlbmNlX3NldF9kZWFk
bGluZShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwga3RpbWVfdCBkZWFkbGluZSkNCj4+Pj4+ICt7
DQo+Pj4+PiArICAgIGlmIChmZW5jZS0+b3BzLT5zZXRfZGVhZGxpbmUgJiYgIWRtYV9mZW5jZV9p
c19zaWduYWxlZChmZW5jZSkpDQo+Pj4+PiArICAgICAgICBmZW5jZS0+b3BzLT5zZXRfZGVhZGxp
bmUoZmVuY2UsIGRlYWRsaW5lKTsNCj4+Pj4+ICt9DQo+Pj4+PiArRVhQT1JUX1NZTUJPTChkbWFf
ZmVuY2Vfc2V0X2RlYWRsaW5lKTsNCj4+Pj4+ICsNCj4+Pj4+ICAgIC8qKg0KPj4+Pj4gICAgICog
ZG1hX2ZlbmNlX2Rlc2NyaWJlIC0gRHVtcCBmZW5jZSBkZXNjcmlidGlvbiBpbnRvIHNlcV9maWxl
DQo+Pj4+PiAgICAgKiBAZmVuY2U6IHRoZSA2ZmVuY2UgdG8gZGVzY3JpYmUNCj4+Pj4+IGRpZmYg
LS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oIGIvaW5jbHVkZS9saW51eC9kbWEtZmVu
Y2UuaA0KPj4+Pj4gaW5kZXggNzc1Y2RjMGI0ZjI0Li5kNzdmNjU5MWM0NTMgMTAwNjQ0DQo+Pj4+
PiAtLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oDQo+Pj4+PiArKysgYi9pbmNsdWRlL2xp
bnV4L2RtYS1mZW5jZS5oDQo+Pj4+PiBAQCAtOTksNiArOTksNyBAQCBlbnVtIGRtYV9mZW5jZV9m
bGFnX2JpdHMgew0KPj4+Pj4gICAgICAgIERNQV9GRU5DRV9GTEFHX1NJR05BTEVEX0JJVCwNCj4+
Pj4+ICAgICAgICBETUFfRkVOQ0VfRkxBR19USU1FU1RBTVBfQklULA0KPj4+Pj4gICAgICAgIERN
QV9GRU5DRV9GTEFHX0VOQUJMRV9TSUdOQUxfQklULA0KPj4+Pj4gKyAgICBETUFfRkVOQ0VfRkxB
R19IQVNfREVBRExJTkVfQklULA0KPj4+Pg0KPj4+PiBXb3VsZCB0aGlzIGJpdCBiZSBiZXR0ZXIg
bGVmdCBvdXQgZnJvbSBjb3JlIGltcGxlbWVudGF0aW9uLCBnaXZlbiBob3cNCj4+Pj4gdGhlIGFw
cHJvYWNoIGlzIHRoZSBjb21wb25lbnQgd2hpY2ggaW1wbGVtZW50cyBkbWEtZmVuY2UgaGFzIHRv
IHRyYWNrDQo+Pj4+IHRoZSBhY3R1YWwgZGVhZGxpbmUgYW5kIGFsbD8NCj4+Pj4NCj4+Pj4gQWxz
byB0YWtpbmcgYSBzdGVwIGJhY2sgLSBhcmUgd2UgYWxsIG9rYXkgd2l0aCBzdGFydGluZyB0byBl
eHBhbmQgdGhlDQo+Pj4+IHJlbGF0aXZlbHkgc2ltcGxlIGNvcmUgc3luY2hyb25pc2F0aW9uIHBy
aW1pdGl2ZSB3aXRoIHNpZGUgY2hhbm5lbA0KPj4+PiBkYXRhIGxpa2UgdGhpcz8gV2hhdCB3b3Vs
ZCBiZSB0aGUgY3JpdGVyaWEgZm9yIHdoYXQgc2lkZSBjaGFubmVsIGRhdGENCj4+Pj4gd291bGQg
YmUgYWNjZXB0YWJsZT8gVGFraW5nIG5vdGUgdGhlIHRoaW5nIGxpdmVzIG91dHNpZGUgZHJpdmVy
cy9ncHUvLg0KPj4+DQo+Pj4gSSBoYWQgc2ltaWxhciBjb25jZXJucyBhbmQgaXQgdG9vayBtZSBh
IG1vbWVudCBhcyB3ZWxsIHRvIHVuZGVyc3RhbmQgdGhlDQo+Pj4gYmFja2dyb3VuZCB3aHkgdGhp
cyBpcyBuZWNlc3NhcnkuIEkgZXNzZW50aWFsbHkgZG9uJ3Qgc2VlIG11Y2ggb3RoZXINCj4+PiBh
cHByb2FjaCB3ZSBjb3VsZCBkby4NCj4+Pg0KPj4+IFllcywgdGhpcyBpcyBHUFUvQ1JUQyBzcGVj
aWZpYywgYnV0IHdlIHNvbWVob3cgbmVlZCBhIGNvbW1vbiBpbnRlcmZhY2UNCj4+PiBmb3IgY29t
bXVuaWNhdGluZyBpdCBiZXR3ZWVuIGRyaXZlcnMgYW5kIHRoYXQncyB0aGUgZG1hX2ZlbmNlIG9i
amVjdCBhcw0KPj4+IGZhciBhcyBJIGNhbiBzZWUuDQo+Pg0KPj4gWWVhaCBJIGFsc28gZG9uJ3Qg
c2VlIGFueSBvdGhlciBlYXN5IG9wdGlvbnMuIEp1c3Qgd2FudGVkIHRvIHJhaXNlIHRoaXMNCj4+
IGFzIHNvbWV0aGluZyB3aGljaCBwcm9iYWJseSBuZWVkcyBzb21lIHdpZGVyIGFja3MuDQo+Pg0K
Pj4gQWxzbyB3aGF0IGFib3V0IHRoZSAibG93IGxldmVsIiBwYXJ0IG9mIG15IHF1ZXN0aW9uIGFi
b3V0IHRoZSByZWFzb24sIG9yDQo+PiBiZW5lZml0cywgb2YgZGVmaW5pbmcgdGhlIGRlYWRsaW5l
IGJpdCBpbiB0aGUgY29tbW9uIGxheWVyPw0KPiANCj4gV2UgY291bGQgbGVhdmUgRE1BX0ZFTkNF
X0ZMQUdfSEFTX0RFQURMSU5FX0JJVCBvdXQsIGJ1dCBPVE9IIG1hbmFnaW5nDQo+IGEgYml0bWFz
ayB0aGF0IGlzIHBhcnRpYWxseSBkZWZpbmVkIGluIGNvcmUgZW51bSBhbmQgcGFydGlhbGx5IGlu
DQo+IGJhY2tlbmQtZHJpdmVyIGhhcyBpdCdzIG93biBkcmF3YmFja3MsIGFuZCBpdCBpc24ndCBs
aWtlIHdlIGFyZQ0KPiBydW5uaW5nIG91dCBvZiBiaXRzLi4gOnNocnVnOg0KDQpUaGVyZSBpcyBE
TUFfRkVOQ0VfRkxBR19VU0VSX0JJVFMgb253YXJkcyB3aGljaCBpbXBsZW1lbnRhdGlvbnMgY291
bGQgDQp1c2UgdG8gc3RvcmUgdGhlaXIgc3R1ZmY/DQoNCkFuZCBpZiB3ZSBza2lwIGZvcndhcmQg
dG8gImRybS9zY2hlZHVsZXI6IEFkZCBmZW5jZSBkZWFkbGluZSBzdXBwb3J0IiANCnRoYXQncyB0
aGUgb25seSBwbGFjZSBiaXQgaXMgdXNlZCwgcmlnaHQ/IFdvdWxkIGl0IHNpbXBseSB3b3JrIHRv
IGxvb2sgDQphdCBkcm1fc2NoZWRfZmVuY2UtPmRlYWRsaW5lID09IDAgYXMgYml0IG5vdCBzZXQ/
IE9yIHlvdSBzZWUgYSBuZWVkIHRvIA0KaW50ZXJvcGVyYXRlIHdpdGggb3RoZXIgZmVuY2UgaW1w
bGVtZW50YXRpb25zIHZpYSB0aGF0IGJpdCBzb21laG93Pw0KDQpSZWdhcmRzLA0KDQpUdnJ0a28N
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGlu
YXJvLm9yZwo=

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C9BA78373
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Apr 2025 22:47:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8E6BC44551
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Apr 2025 20:47:07 +0000 (UTC)
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com [136.143.188.112])
	by lists.linaro.org (Postfix) with ESMTPS id EE81B44551
	for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Apr 2025 20:46:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=zohomail header.b=DqhOAfP7;
	spf=pass (lists.linaro.org: domain of dmitry.osipenko@collabora.com designates 136.143.188.112 as permitted sender) smtp.mailfrom=dmitry.osipenko@collabora.com;
	arc=pass ("zohomail.com:s=zohoarc:i=1");
	dmarc=pass (policy=none) header.from=collabora.com
ARC-Seal: i=1; a=rsa-sha256; t=1743540398; cv=none;
	d=zohomail.com; s=zohoarc;
	b=PN5bYGeqXLvmp2/TycPIAPO5A62oJmUbeSau36lmUibgJRei9L0BGXG4mOEMt0pRJmOz2NaF7fa7fhqtLonPLzkECyUiPnNMww8DplzKRec0tYRLEnLtRbnxmuSuhoO9feoTWcks1DERJen7ch52U8lDOMFqCIh4sQSkba+oGQE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc;
	t=1743540398; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
	bh=Nwoofyd9hzvVQbQplsmXjWgL9RWGfB+EP1jAWvqqixw=;
	b=hjhWbEITx355cUzmz/Lz4w1lug59q2FlhYbFrvR4L12EaC9hiorFdDxrom7mKWRBZZnRxuq4O++O/R+pfYTr51O6DyBTTGPZvzfCpT6kirr3e72ydJi0sQZVgKA4sonQLCZUDpIpEuNBxEplETT1pAOYc8a0gZinQJWvzK83TWA=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1743540398;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=Nwoofyd9hzvVQbQplsmXjWgL9RWGfB+EP1jAWvqqixw=;
	b=DqhOAfP7s+x3awV10qSgOHGLpEl+4TV62M+3VSQI7W2enL3XCajX+9LpKk4kZUw6
	WtNRlWYZt9XnfPoUJZwIJL7vwlMYybQABEzwJmbKgta84eNlCZzhbVDA4ghz7P9JNEP
	CZ6g3toZEkl2qtQIm1cIZuH5ePUJy68KDXktQs1Y=
Received: by mx.zohomail.com with SMTPS id 1743540396592221.6940754924799;
	Tue, 1 Apr 2025 13:46:36 -0700 (PDT)
Message-ID: <ff614cb7-94ca-4d74-9bbb-f97c95893113@collabora.com>
Date: Tue, 1 Apr 2025 23:46:32 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Rob Clark <robdclark@gmail.com>, dri-devel@lists.freedesktop.org
References: <20250401155758.48855-1-robdclark@gmail.com>
 <CAF6AEGsKbjq_q7ezQTn5vyAF1cjXahgbv84uYK35BJH1KBXSpw@mail.gmail.com>
Content-Language: en-US
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <CAF6AEGsKbjq_q7ezQTn5vyAF1cjXahgbv84uYK35BJH1KBXSpw@mail.gmail.com>
X-ZohoMailClient: External
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: EE81B44551
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[zohomail.com:s=zohoarc:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[136.143.188.112:from];
	R_SPF_ALLOW(-0.20)[+ip4:136.143.188.0/24];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=zohomail];
	ONCE_RECEIVED(0.20)[];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[amd.com,chromium.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,vger.kernel.org,lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:2639, ipnet:136.143.188.0/23, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: K3UMTM7WGCDWGVGRFQOR6TIJFCDWHWXY
X-Message-ID-Hash: K3UMTM7WGCDWGVGRFQOR6TIJFCDWHWXY
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Rob Clark <robdclark@chromium.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_(?:buf|fence|resv)b" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_(?:buf|fence|resv)b" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6] drm/syncobj: Extend EXPORT_SYNC_FILE for timeline syncobjs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/K3UMTM7WGCDWGVGRFQOR6TIJFCDWHWXY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gNC8xLzI1IDIzOjQwLCBSb2IgQ2xhcmsgd3JvdGU6DQo+IE9uIFR1ZSwgQXByIDEsIDIwMjUg
YXQgODo1OOKAr0FNIFJvYiBDbGFyayA8cm9iZGNsYXJrQGdtYWlsLmNvbT4gd3JvdGU6DQo+Pg0K
Pj4gRnJvbTogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hyb21pdW0ub3JnPg0KPj4NCj4+IEFkZCBz
dXBwb3J0IGZvciBleHBvcnRpbmcgYSBkbWFfZmVuY2UgZmQgZm9yIGEgc3BlY2lmaWMgcG9pbnQg
b24gYQ0KPj4gdGltZWxpbmUuICBUaGlzIGlzIG5lZWRlZCBmb3IgdnRlc3QvdnBpcGVbMV1bMl0g
dG8gaW1wbGVtZW50IHRpbWVsaW5lDQo+PiBzeW5jb2JqIHN1cHBvcnQsIGFzIGl0IG5lZWRzIGEg
d2F5IHRvIHR1cm4gYSBwb2ludCBvbiBhIHRpbWVsaW5lIGJhY2sNCj4+IGludG8gYSBkbWFfZmVu
Y2UgZmQuICBJdCBhbHNvIGNsb3NlcyBhbiBvZGQgb21pc3Npb24gZnJvbSB0aGUgc3luY29iag0K
Pj4gVUFQSS4NCj4+DQo+PiBbMV0gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL21lc2Ev
bWVzYS8tL21lcmdlX3JlcXVlc3RzLzMzNDMzDQo+PiBbMl0gaHR0cHM6Ly9naXRsYWIuZnJlZWRl
c2t0b3Aub3JnL3ZpcmdsL3ZpcmdscmVuZGVyZXIvLS9tZXJnZV9yZXF1ZXN0cy84MDUNCj4+DQo+
PiB2MjogQWRkIERSTV9TWU5DT0JKX0hBTkRMRV9UT19GRF9GTEFHU19USU1FTElORQ0KPj4gdjM6
IEFkZCB1bnN0YWdlZCB1YWJpIGhlYWRlciBodW5rDQo+PiB2NDogQWxzbyBoYW5kbGUgSU1QT1JU
X1NZTkNfRklMRSBjYXNlDQo+PiB2NTogQWRkcmVzcyBjb21tZW50cyBmcm9tIERtaXRyeQ0KPj4g
djY6IGNoZWNrcGF0Y2gucGwgbml0cw0KPj4NCj4+IFNpZ25lZC1vZmYtYnk6IFJvYiBDbGFyayA8
cm9iZGNsYXJrQGNocm9taXVtLm9yZz4NCj4+IFJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmln
IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+PiBSZXZpZXdlZC1ieTogRG1pdHJ5IE9zaXBl
bmtvIDxkbWl0cnkub3NpcGVua29AY29sbGFib3JhLmNvbT4NCj4+IC0tLQ0KPj4gIGRyaXZlcnMv
Z3B1L2RybS9kcm1fc3luY29iai5jIHwgNDcgKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0t
LS0tLS0NCj4+ICBpbmNsdWRlL3VhcGkvZHJtL2RybS5oICAgICAgICB8ICA0ICsrKw0KPj4gIDIg
ZmlsZXMgY2hhbmdlZCwgNDEgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pDQo+Pg0KPj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fc3luY29iai5jIGIvZHJpdmVycy9ncHUv
ZHJtL2RybV9zeW5jb2JqLmMNCj4+IGluZGV4IDRmMmFiOGE3YjUwZi4uNjM2Y2Q4M2NhMjllIDEw
MDY0NA0KPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9zeW5jb2JqLmMNCj4+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9kcm1fc3luY29iai5jDQo+PiBAQCAtNzQxLDcgKzc0MSw3IEBAIHN0YXRp
YyBpbnQgZHJtX3N5bmNvYmpfZmRfdG9faGFuZGxlKHN0cnVjdCBkcm1fZmlsZSAqZmlsZV9wcml2
YXRlLA0KPj4gIH0NCj4+DQo+PiAgc3RhdGljIGludCBkcm1fc3luY29ial9pbXBvcnRfc3luY19m
aWxlX2ZlbmNlKHN0cnVjdCBkcm1fZmlsZSAqZmlsZV9wcml2YXRlLA0KPj4gLSAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGludCBmZCwgaW50IGhhbmRsZSkNCj4+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbnQgZmQsIGlu
dCBoYW5kbGUsIHU2NCBwb2ludCkNCj4+ICB7DQo+PiAgICAgICAgIHN0cnVjdCBkbWFfZmVuY2Ug
KmZlbmNlID0gc3luY19maWxlX2dldF9mZW5jZShmZCk7DQo+PiAgICAgICAgIHN0cnVjdCBkcm1f
c3luY29iaiAqc3luY29iajsNCj4+IEBAIC03NTUsMTQgKzc1NSwyNCBAQCBzdGF0aWMgaW50IGRy
bV9zeW5jb2JqX2ltcG9ydF9zeW5jX2ZpbGVfZmVuY2Uoc3RydWN0IGRybV9maWxlICpmaWxlX3By
aXZhdGUsDQo+PiAgICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9FTlQ7DQo+PiAgICAgICAgIH0N
Cj4+DQo+PiAtICAgICAgIGRybV9zeW5jb2JqX3JlcGxhY2VfZmVuY2Uoc3luY29iaiwgZmVuY2Up
Ow0KPj4gKyAgICAgICBpZiAocG9pbnQpIHsNCj4+ICsgICAgICAgICAgICAgICBzdHJ1Y3QgZG1h
X2ZlbmNlX2NoYWluICpjaGFpbiA9IGRtYV9mZW5jZV9jaGFpbl9hbGxvYygpOw0KPj4gKw0KPj4g
KyAgICAgICAgICAgICAgIGlmICghY2hhaW4pDQo+PiArICAgICAgICAgICAgICAgICAgICAgICBy
ZXR1cm4gLUVOT01FTTsNCj4+ICsNCj4+ICsgICAgICAgICAgICAgICBkcm1fc3luY29ial9hZGRf
cG9pbnQoc3luY29iaiwgY2hhaW4sIGZlbmNlLCBwb2ludCk7DQo+PiArICAgICAgIH0gZWxzZSB7
DQo+PiArICAgICAgICAgICAgICAgZHJtX3N5bmNvYmpfcmVwbGFjZV9mZW5jZShzeW5jb2JqLCBm
ZW5jZSk7DQo+PiArICAgICAgIH0NCj4+ICsNCj4+ICAgICAgICAgZG1hX2ZlbmNlX3B1dChmZW5j
ZSk7DQo+PiAgICAgICAgIGRybV9zeW5jb2JqX3B1dChzeW5jb2JqKTsNCj4+ICAgICAgICAgcmV0
dXJuIDA7DQo+PiAgfQ0KPj4NCj4+ICBzdGF0aWMgaW50IGRybV9zeW5jb2JqX2V4cG9ydF9zeW5j
X2ZpbGUoc3RydWN0IGRybV9maWxlICpmaWxlX3ByaXZhdGUsDQo+PiAtICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgaW50IGhhbmRsZSwgaW50ICpwX2ZkKQ0KPj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGludCBoYW5kbGUsIHU2NCBwb2ludCwg
aW50ICpwX2ZkKQ0KPj4gIHsNCj4+ICAgICAgICAgaW50IHJldDsNCj4+ICAgICAgICAgc3RydWN0
IGRtYV9mZW5jZSAqZmVuY2U7DQo+PiBAQCAtNzcyLDcgKzc4Miw3IEBAIHN0YXRpYyBpbnQgZHJt
X3N5bmNvYmpfZXhwb3J0X3N5bmNfZmlsZShzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGVfcHJpdmF0ZSwN
Cj4+ICAgICAgICAgaWYgKGZkIDwgMCkNCj4+ICAgICAgICAgICAgICAgICByZXR1cm4gZmQ7DQo+
Pg0KPj4gLSAgICAgICByZXQgPSBkcm1fc3luY29ial9maW5kX2ZlbmNlKGZpbGVfcHJpdmF0ZSwg
aGFuZGxlLCAwLCAwLCAmZmVuY2UpOw0KPj4gKyAgICAgICByZXQgPSBkcm1fc3luY29ial9maW5k
X2ZlbmNlKGZpbGVfcHJpdmF0ZSwgaGFuZGxlLCBwb2ludCwgMCwgJmZlbmNlKTsNCj4+ICAgICAg
ICAgaWYgKHJldCkNCj4+ICAgICAgICAgICAgICAgICBnb3RvIGVycl9wdXRfZmQ7DQo+Pg0KPj4g
QEAgLTg2OSw2ICs4NzksOSBAQCBkcm1fc3luY29ial9oYW5kbGVfdG9fZmRfaW9jdGwoc3RydWN0
IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwNCj4+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgc3RydWN0IGRybV9maWxlICpmaWxlX3ByaXZhdGUpDQo+PiAgew0KPj4gICAg
ICAgICBzdHJ1Y3QgZHJtX3N5bmNvYmpfaGFuZGxlICphcmdzID0gZGF0YTsNCj4+ICsgICAgICAg
dW5zaWduZWQgaW50IHZhbGlkX2ZsYWdzID0gRFJNX1NZTkNPQkpfSEFORExFX1RPX0ZEX0ZMQUdT
X1RJTUVMSU5FIHwNCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgRFJNX1NZ
TkNPQkpfSEFORExFX1RPX0ZEX0ZMQUdTX0VYUE9SVF9TWU5DX0ZJTEU7DQo+PiArICAgICAgIHU2
NCBwb2ludCA9IDA7DQo+Pg0KPj4gICAgICAgICBpZiAoIWRybV9jb3JlX2NoZWNrX2ZlYXR1cmUo
ZGV2LCBEUklWRVJfU1lOQ09CSikpDQo+PiAgICAgICAgICAgICAgICAgcmV0dXJuIC1FT1BOT1RT
VVBQOw0KPj4gQEAgLTg3NiwxMyArODg5LDE4IEBAIGRybV9zeW5jb2JqX2hhbmRsZV90b19mZF9p
b2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLA0KPj4gICAgICAgICBpZiAo
YXJncy0+cGFkKQ0KPj4gICAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOw0KPj4NCj4+IC0g
ICAgICAgaWYgKGFyZ3MtPmZsYWdzICE9IDAgJiYNCj4+IC0gICAgICAgICAgIGFyZ3MtPmZsYWdz
ICE9IERSTV9TWU5DT0JKX0hBTkRMRV9UT19GRF9GTEFHU19FWFBPUlRfU1lOQ19GSUxFKQ0KPj4g
KyAgICAgICBpZiAoYXJncy0+ZmxhZ3MgJiB+dmFsaWRfZmxhZ3MpDQo+PiAgICAgICAgICAgICAg
ICAgcmV0dXJuIC1FSU5WQUw7DQo+Pg0KPj4gKyAgICAgICBpZiAoYXJncy0+ZmxhZ3MgJiBEUk1f
U1lOQ09CSl9IQU5ETEVfVE9fRkRfRkxBR1NfVElNRUxJTkUpDQo+PiArICAgICAgICAgICAgICAg
cG9pbnQgPSBhcmdzLT5wb2ludDsNCj4+ICsNCj4+ICAgICAgICAgaWYgKGFyZ3MtPmZsYWdzICYg
RFJNX1NZTkNPQkpfSEFORExFX1RPX0ZEX0ZMQUdTX0VYUE9SVF9TWU5DX0ZJTEUpDQo+PiAgICAg
ICAgICAgICAgICAgcmV0dXJuIGRybV9zeW5jb2JqX2V4cG9ydF9zeW5jX2ZpbGUoZmlsZV9wcml2
YXRlLCBhcmdzLT5oYW5kbGUsDQo+PiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgJmFyZ3MtPmZkKTsNCj4+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwb2ludCwgJmFyZ3MtPmZkKTsNCj4+ICsNCj4+
ICsgICAgICAgaWYgKGFyZ3MtPnBvaW50KQ0KPj4gKyAgICAgICAgICAgICAgIHJldHVybiAtRUlO
VkFMOw0KPj4NCj4+ICAgICAgICAgcmV0dXJuIGRybV9zeW5jb2JqX2hhbmRsZV90b19mZChmaWxl
X3ByaXZhdGUsIGFyZ3MtPmhhbmRsZSwNCj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAmYXJncy0+ZmQpOw0KPj4gQEAgLTg5Myw2ICs5MTEsOSBAQCBkcm1fc3luY29i
al9mZF90b19oYW5kbGVfaW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwN
Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGRybV9maWxlICpm
aWxlX3ByaXZhdGUpDQo+PiAgew0KPj4gICAgICAgICBzdHJ1Y3QgZHJtX3N5bmNvYmpfaGFuZGxl
ICphcmdzID0gZGF0YTsNCj4+ICsgICAgICAgdW5zaWduZWQgaW50IHZhbGlkX2ZsYWdzID0gRFJN
X1NZTkNPQkpfRkRfVE9fSEFORExFX0ZMQUdTX1RJTUVMSU5FIHwNCj4+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgRFJNX1NZTkNPQkpfRkRfVE9fSEFORExFX0ZMQUdTX0lNUE9S
VF9TWU5DX0ZJTEU7DQo+PiArICAgICAgIHU2NCBwb2ludCA9IDA7DQo+Pg0KPj4gICAgICAgICBp
ZiAoIWRybV9jb3JlX2NoZWNrX2ZlYXR1cmUoZGV2LCBEUklWRVJfU1lOQ09CSikpDQo+PiAgICAg
ICAgICAgICAgICAgcmV0dXJuIC1FT1BOT1RTVVBQOw0KPiANCj4gb2gsIEkgc3VwcG9zZSBJIHNo
b3VsZCBhZGQgYSBjaGVjayBmb3IgRFJJVkVSX1NZTkNPQkpfVElNRUxJTkU/ICBJJ2xsDQo+IHNl
bmQgYSB2NyBhIGJpdCBsYXRlcg0KDQpDaHJpc3RpYW4gYWxyZWFkeSBhcHBsaWVkIHRvIG1pc2Mt
dGVzdCwgcGxlYXNlIHJlYmFzZSBhbmQgbWFrZSBpdCBhcyBhDQpuZXcgcGF0Y2gNCg0KLS0gDQpC
ZXN0IHJlZ2FyZHMsDQpEbWl0cnkNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=

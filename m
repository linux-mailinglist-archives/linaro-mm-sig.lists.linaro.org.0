Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eNMtO6X44GkloAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:56:37 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DCFA40FF8E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:56:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A30EB405DC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:56:36 +0000 (UTC)
Received: from jeth.damsy.net (jeth.damsy.net [51.159.152.102])
	by lists.linaro.org (Postfix) with ESMTPS id 6BE153F86A
	for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Nov 2025 15:24:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=damsy.net header.s=202408r header.b=fbMo2WAo;
	dkim=pass header.d=damsy.net header.s=202408e header.b="B/j8Nngl";
	dmarc=none;
	spf=pass (lists.linaro.org: domain of pierre-eric@damsy.net designates 51.159.152.102 as permitted sender) smtp.mailfrom=pierre-eric@damsy.net
DKIM-Signature: v=1; a=rsa-sha256; s=202408r; d=damsy.net; c=relaxed/relaxed;
	h=From:To:Subject:Date:Message-ID; t=1762269846; bh=Md3JXufxJqYTYDD+0LVVo5S
	jqxZHasmKDqpehjHw5dk=; b=fbMo2WAoOTSO/uU6bDOvUwhinhZTOHOaW/et4qJ8N6hq9rRgKL
	jJFDT46tFLjhEuxBQefWD+yVfJ8T2nwnZ5+kxPrEg6FNsfeHcIpdgM7x2BJNnHD/42lusVxeiEN
	xzGmoE1VirB7YKn19rKchyDTu9lM91XLEXwrQeSZ0h/NT3WDluxtwO3/guL+CkqFHfEIDXFnG85
	fqAZgqiIKq+Hv+NlhrT9O7zY+wLq9XeqetWUWps4gswIkMutfeQHhPr7TI0KQwA2NcEi2hQ/kNz
	dIk1iZ8DXibbbYdYKwMIBUjz9MhaW8Ir7/SopS/NOzc1LfzDpjn7bTCvfsMLfYcjjHg==;
DKIM-Signature: v=1; a=ed25519-sha256; s=202408e; d=damsy.net; c=relaxed/relaxed;
	h=From:To:Subject:Date:Message-ID; t=1762269846; bh=Md3JXufxJqYTYDD+0LVVo5S
	jqxZHasmKDqpehjHw5dk=; b=B/j8NnglB5dEWa4XIPmntCOh5fE1cR/Z/+Peyo/fB/Qv9AQ3+r
	Nb544jcRoJoMx3GlaVRGbghxkz3rY8QrQ8AQ==;
Message-ID: <c1da66b4-3b71-4d83-8e8e-56151030b691@damsy.net>
Date: Tue, 4 Nov 2025 16:24:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: phasta@kernel.org,
 Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>,
 Matthew Brost <matthew.brost@intel.com>, Danilo Krummrich <dakr@kernel.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>, Luben Tuikov <luben.tuikov@amd.com>
References: <20251104095358.15092-1-pierre-eric.pelloux-prayer@amd.com>
 <628cdf3a0c5b783c09fe2a40aca4a4a48c614e66.camel@mailbox.org>
Content-Language: en-US
From: Pierre-Eric Pelloux-Prayer <pierre-eric@damsy.net>
In-Reply-To: <628cdf3a0c5b783c09fe2a40aca4a4a48c614e66.camel@mailbox.org>
X-Spamd-Bar: -
X-MailFrom: pierre-eric@damsy.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ABWY6N4BY5TBDRPEMOALRRHZ4GNN7DJE
X-Message-ID-Hash: ABWY6N4BY5TBDRPEMOALRRHZ4GNN7DJE
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:48:50 +0000
CC: Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3] drm/sched: Fix deadlock in drm_sched_entity_kill_jobs_cb
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ABWY6N4BY5TBDRPEMOALRRHZ4GNN7DJE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[3911];
	R_DKIM_REJECT(1.00)[damsy.net:s=202408r,damsy.net:s=202408e];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,amd.com,intel.com,gmail.com,linux.intel.com,suse.de,ffwll.ch,linaro.org];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[damsy.net];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[damsy.net:-];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[pierre-eric@damsy.net,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	NEURAL_HAM(-0.00)[-0.759];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,amd.com:email,linaro.org:email,damsy.net:mid,gitlab.freedesktop.org:url]
X-Rspamd-Queue-Id: 8DCFA40FF8E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCkxlIDA0LzExLzIwMjUgw6AgMTM6NDMsIFBoaWxpcHAgU3Rhbm5lciBhIMOpY3JpdMKgOg0K
PiBPbiBUdWUsIDIwMjUtMTEtMDQgYXQgMTA6NTMgKzAxMDAsIFBpZXJyZS1FcmljIFBlbGxvdXgt
UHJheWVyIHdyb3RlOg0KPj4gVGhlIE1lc2EgaXNzdWUgcmVmZXJlbmNlZCBiZWxvdyBwb2ludGVk
IG91dCBhIHBvc3NpYmxlIGRlYWRsb2NrOg0KPj4NCj4+IFsgMTIzMS42MTEwMzFdwqAgUG9zc2li
bGUgaW50ZXJydXB0IHVuc2FmZSBsb2NraW5nIHNjZW5hcmlvOg0KPj4NCj4+IFsgMTIzMS42MTEw
MzNdwqDCoMKgwqDCoMKgwqAgQ1BVMMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIENQVTENCj4+IFsgMTIzMS42MTEwMzRdwqDCoMKgwqDCoMKgwqAgLS0tLcKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0tLS0NCj4+IFsgMTIzMS42MTEwMzVdwqDCoCBs
b2NrKCZ4YS0+eGFfbG9jayMxNyk7DQo+PiBbIDEyMzEuNjExMDM4XcKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGxvY2FsX2lycV9k
aXNhYmxlKCk7DQo+PiBbIDEyMzEuNjExMDM5XcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGxvY2soJmZlbmNlLT5sb2NrKTsNCj4+
IFsgMTIzMS42MTEwNDFdwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgbG9jaygmeGEtPnhhX2xvY2sjMTcpOw0KPj4gWyAxMjMxLjYx
MTA0NF3CoMKgIDxJbnRlcnJ1cHQ+DQo+PiBbIDEyMzEuNjExMDQ1XcKgwqDCoMKgIGxvY2soJmZl
bmNlLT5sb2NrKTsNCj4+IFsgMTIzMS42MTEwNDddDQo+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgICoqKiBERUFETE9DSyAqKioNCj4+DQo+PiBJbiB0aGlzIGV4YW1wbGUsIENQVTAg
d291bGQgYmUgYW55IGZ1bmN0aW9uIGFjY2Vzc2luZyBqb2ItPmRlcGVuZGVuY2llcw0KPj4gdGhy
b3VnaCB0aGUgeGFfKiBmdW5jdGlvbnMgdGhhdCBkb2Vzbid0IGRpc2FibGUgaW50ZXJydXB0cyAo
ZWc6DQo+PiBkcm1fc2NoZWRfam9iX2FkZF9kZXBlbmRlbmN5LCBkcm1fc2NoZWRfZW50aXR5X2tp
bGxfam9ic19jYikuDQo+Pg0KPj4gQ1BVMSBpcyBleGVjdXRpbmcgZHJtX3NjaGVkX2VudGl0eV9r
aWxsX2pvYnNfY2IgYXMgYSBmZW5jZSBzaWduYWxsaW5nDQo+PiBjYWxsYmFjayBzbyBpbiBhbiBp
bnRlcnJ1cHQgY29udGV4dC4gSXQgd2lsbCBkZWFkbG9jayB3aGVuIHRyeWluZyB0bw0KPj4gZ3Jh
YiB0aGUgeGFfbG9jayB3aGljaCBpcyBhbHJlYWR5IGhlbGQgYnkgQ1BVMC4NCj4+DQo+PiBSZXBs
YWNpbmcgYWxsIHhhXyogdXNhZ2UgYnkgdGhlaXIgeGFfKl9pcnEgY291bnRlcnBhcnRzIHdvdWxk
IGZpeA0KPj4gdGhpcyBpc3N1ZSwgYnV0IENocmlzdGlhbiBwb2ludGVkIG91dCBhbm90aGVyIGlz
c3VlOiBkbWFfZmVuY2Vfc2lnbmFsDQo+PiB0YWtlcyBmZW5jZS5sb2NrIGFuZCBzbyBkb2VzIGRt
YV9mZW5jZV9hZGRfY2FsbGJhY2suDQo+Pg0KPj4gIMKgIGRtYV9mZW5jZV9zaWduYWwoKSAvLyBs
b2NrcyBmMS5sb2NrDQo+PiAgwqAgLT4gZHJtX3NjaGVkX2VudGl0eV9raWxsX2pvYnNfY2IoKQ0K
Pj4gIMKgIC0+IGZvcmVhY2ggZGVwZW5kZW5jaWVzDQo+PiAgwqDCoMKgwqAgLT4gZG1hX2ZlbmNl
X2FkZF9jYWxsYmFjaygpIC8vIGxvY2tzIGYyLmxvY2sNCj4+DQo+PiBUaGlzIHdpbGwgZGVhZGxv
Y2sgaWYgZjEgYW5kIGYyIHNoYXJlIHRoZSBzYW1lIHNwaW5sb2NrLg0KPj4NCj4+IFRvIGZpeCBi
b3RoIGlzc3VlcywgdGhlIGNvZGUgaXRlcmF0aW5nIG9uIGRlcGVuZGVuY2llcyBhbmQgcmUtYXJt
aW5nIHRoZW0NCj4+IGlzIG1vdmVkIG91dCB0byBkcm1fc2NoZWRfZW50aXR5X2tpbGxfam9ic193
b3JrLg0KPj4NCj4+IHYyOiByZXdvcmRlZCBjb21taXQgbWVzc2FnZSAoUGhpbGlwcCkNCj4+IHYz
OiBhZGRlZCBGaXhlcyB0YWcgKFBoaWxpcHApDQo+IA0KPiBUaHggZm9yIHRoZSB1cGRhdGUuDQo+
IEluIHRoZSBmdXR1cmUgcGxlYXNlIHB1dCB0aGUgY2hhbmdlbG9nIGJlbG93IGJldHdlZW4gYSBw
YWlyIG9mICctLS0nDQo+IA0KPiAtLS0NCj4gdjI6IOKApg0KPiB2Mzog4oCmDQo+IC0tLQ0KDQpP
Sy4NCg0KPiANCj4gU29tZSB0aGluZ3MgSSBoYXZlIHVuZm9ydHVuYXRlbHkgb3Zlcmxvb2tlZCBi
ZWxvdy4NCj4gDQo+Pg0KPj4gRml4ZXM6IDJmZGI4YThmMDdjMiAoImRybS9zY2hlZHVsZXI6IHJl
d29yayBlbnRpdHkgZmx1c2gsIGtpbGwgYW5kIGZpbmkiKQ0KPiANCj4gV2Ugc2hvdWxkICtDYyBz
dGFibGUuIEl0J3MgYSBkZWFkbG9jayBhZnRlciBhbGwuDQoNCk9LLg0KDQo+IA0KPj4gTGluazog
aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL21lc2EvbWVzYS8tL2lzc3Vlcy8xMzkwOA0K
Pj4gUmVwb3J0ZWQtYnk6IE1pa2hhaWwgR2F2cmlsb3YgPG1pa2hhaWwudi5nYXZyaWxvdkBnbWFp
bC5jb20+DQo+PiBTdWdnZXN0ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2Vu
aWdAYW1kLmNvbT4NCj4+IFJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4u
a29lbmlnQGFtZC5jb20+DQo+PiBTaWduZWQtb2ZmLWJ5OiBQaWVycmUtRXJpYyBQZWxsb3V4LVBy
YXllciA8cGllcnJlLWVyaWMucGVsbG91eC1wcmF5ZXJAYW1kLmNvbT4NCj4+IC0tLQ0KPj4gIMKg
ZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9lbnRpdHkuYyB8IDM0ICsrKysrKysrKysr
KystLS0tLS0tLS0tLQ0KPj4gIMKgMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDE1
IGRlbGV0aW9ucygtKQ0KPj4NCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1
bGVyL3NjaGVkX2VudGl0eS5jIGIvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9lbnRp
dHkuYw0KPj4gaW5kZXggYzhlOTQ5ZjRhNTY4Li5mZTE3NGE0ODU3YmUgMTAwNjQ0DQo+PiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2VudGl0eS5jDQo+PiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2VudGl0eS5jDQo+PiBAQCAtMTczLDI2ICsxNzMs
MTUgQEAgaW50IGRybV9zY2hlZF9lbnRpdHlfZXJyb3Ioc3RydWN0IGRybV9zY2hlZF9lbnRpdHkg
KmVudGl0eSkNCj4+ICDCoH0NCj4+ICDCoEVYUE9SVF9TWU1CT0woZHJtX3NjaGVkX2VudGl0eV9l
cnJvcik7DQo+PiAgIA0KPj4gK3N0YXRpYyB2b2lkIGRybV9zY2hlZF9lbnRpdHlfa2lsbF9qb2Jz
X2NiKHN0cnVjdCBkbWFfZmVuY2UgKmYsDQo+PiArCQkJCQnCoCBzdHJ1Y3QgZG1hX2ZlbmNlX2Ni
ICpjYik7DQo+IA0KPiBJdCdzIGZhciBiZXR0ZXIgdG8gbW92ZSB0aGUgZnVuY3Rpb24gdXAgaW5z
dGVhZC4gQ2FuIHlvdSBkbyB0aGF0Pw0KDQpTaW5jZSBkcm1fc2NoZWRfZW50aXR5X2tpbGxfam9i
c19jYiB1c2VzIGRybV9zY2hlZF9lbnRpdHlfa2lsbF9qb2JzIGFuZCB2aWNlIA0KdmVyc2EsIEkn
bGwgaGF2ZSB0byBmb3J3YXJkIGRlY2xhcmUgb25lIG9mIHRoZSAyIGZ1bmN0aW9ucyBhbnl3YXku
DQoNCg0KPiANCj4+ICsNCj4+DQo+IA0KPiBb4oCmXQ0KPiANCj4+ICsvKiBTaWduYWwgdGhlIHNj
aGVkdWxlciBmaW5pc2hlZCBmZW5jZSB3aGVuIHRoZSBlbnRpdHkgaW4gcXVlc3Rpb24gaXMga2ls
bGVkLiAqLw0KPj4gK3N0YXRpYyB2b2lkIGRybV9zY2hlZF9lbnRpdHlfa2lsbF9qb2JzX2NiKHN0
cnVjdCBkbWFfZmVuY2UgKmYsDQo+PiArCQkJCQnCoCBzdHJ1Y3QgZG1hX2ZlbmNlX2NiICpjYikN
Cj4+ICt7DQo+PiArCXN0cnVjdCBkcm1fc2NoZWRfam9iICpqb2IgPSBjb250YWluZXJfb2YoY2Is
IHN0cnVjdCBkcm1fc2NoZWRfam9iLA0KPj4gKwkJCQkJCSBmaW5pc2hfY2IpOw0KPj4gKw0KPj4g
KwlkbWFfZmVuY2VfcHV0KGYpOw0KPiANCj4gSXQgd291bGQgYmUgZ3JlYXQgaWYgd2Uga25ldyB3
aGF0IGZlbmNlIGlzIGJlaW5nIGRyb3BwZWQgaGVyZSBhbmQgd2h5Lg0KPiBJIGtub3cgeW91J3Jl
IGp1c3QgbW92aW5nIHRoZSBwcmUtZXhpc3RpbmcgY29kZSwgYnV0IGlmIHlvdSBzaG91bGQNCj4g
a25vdywgaW5mb3JtaW5nIGFib3V0IHRoYXQgdmlhIGNvbW1lbnQgd291bGQgYmUgZ3JlYXQuDQo+
IA0KDQpBcyBkaXNjdXNzZWQgb2ZmbGluZSwgImYiIGlzIHNpbXBseSB0aGUgZmVuY2UgYmVpbmcg
c2lnbmFsZWQsIEknbSBub3Qgc3VyZSBpdCANCndhcnJhbnRzIGEgY29tbWVudC4NCg0KUmVnYXJk
cywNClBpZXJyZS1FcmljDQoNCj4gT3B0aW9uYWwuDQo+IA0KPiANCj4gUmVzdCBvZiB0aGUgY29k
ZSBsb29rcyBnb29kLiBObyBmdXJ0aGVyIG9iamVjdGlvbnMuDQo+IA0KPiANCj4gUC4NCg0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8u
b3JnCg==

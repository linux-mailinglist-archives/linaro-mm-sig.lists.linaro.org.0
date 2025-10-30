Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YAJKCPn34GnZnwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:53:45 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A978D40FDE5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:53:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BA8EE4097A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:53:43 +0000 (UTC)
Received: from jeth.damsy.net (jeth.damsy.net [51.159.152.102])
	by lists.linaro.org (Postfix) with ESMTPS id C6E603F7AB
	for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Oct 2025 12:07:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=damsy.net header.s=202408r header.b="ru2dQ6r/";
	dkim=pass header.d=damsy.net header.s=202408e header.b="/T94g59U";
	dmarc=none;
	spf=pass (lists.linaro.org: domain of pierre-eric@damsy.net designates 51.159.152.102 as permitted sender) smtp.mailfrom=pierre-eric@damsy.net
DKIM-Signature: v=1; a=rsa-sha256; s=202408r; d=damsy.net; c=relaxed/relaxed;
	h=From:To:Subject:Date:Message-ID; t=1761826013; bh=R9PAwQHeMkITXcpMrtxUNPe
	014g4Qj6IEYjyr1zyJvk=; b=ru2dQ6r/nud5HOoqwBE750RvsPrgmvTNrykguX2SZ1+mpDTWiy
	4ttwPDYAX22NS8J3jA4tsVpcyph9xro83VrX0ckATsG/vsCbOeaKuyktd7+9KanuzndX1YZ3nft
	NOnNKn6pXv64CyCxTTGzmZk/Pd1yrKhV+PWQDEdfPNb9+MLo+8LbFMg4Mz9E+pl5cHowoIcXlWg
	fzi/nRhXUUUVTytoIN/6eqlt5YqQOKIp2QAYkOIz111XkRyw3xp46ed1A+51krJ+w51k87TMEv2
	JMKO01bbdr2IGfoHBDchwXuftllMrEdC536eRhYACi5B26/nDh329DVEq30RepHuTyQ==;
DKIM-Signature: v=1; a=ed25519-sha256; s=202408e; d=damsy.net; c=relaxed/relaxed;
	h=From:To:Subject:Date:Message-ID; t=1761826013; bh=R9PAwQHeMkITXcpMrtxUNPe
	014g4Qj6IEYjyr1zyJvk=; b=/T94g59U0g1LTiijf/QkKxE7gdalHEpNXHu/fTDmtsBrVR2R14
	zCthAWVelAn2i5oU/yeb8pigXZEpZrSzexAw==;
Message-ID: <442d0e70-c9e2-4bd6-a144-ea083dbf86d2@damsy.net>
Date: Thu, 30 Oct 2025 13:06:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: phasta@kernel.org,
 Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>,
 Matthew Brost <matthew.brost@intel.com>, Danilo Krummrich <dakr@kernel.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>
References: <20251029091103.1159-1-pierre-eric.pelloux-prayer@amd.com>
 <fb2881006f843bd85dd02948c4467c81086effc8.camel@mailbox.org>
Content-Language: en-US
From: Pierre-Eric Pelloux-Prayer <pierre-eric@damsy.net>
In-Reply-To: <fb2881006f843bd85dd02948c4467c81086effc8.camel@mailbox.org>
X-Spamd-Bar: -
X-MailFrom: pierre-eric@damsy.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: NDPKOOXQEZFIMQJVVXUJZHYUEID2EREF
X-Message-ID-Hash: NDPKOOXQEZFIMQJVVXUJZHYUEID2EREF
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:48:36 +0000
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1] drm/sched: fix deadlock in drm_sched_entity_kill_jobs_cb
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NDPKOOXQEZFIMQJVVXUJZHYUEID2EREF/>
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
	DATE_IN_PAST(1.00)[4034];
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
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[damsy.net:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[pierre-eric@damsy.net,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.954];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,gitlab.freedesktop.org:url,amd.com:email,damsy.net:mid]
X-Rspamd-Queue-Id: A978D40FDE5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCkxlIDMwLzEwLzIwMjUgw6AgMTI6MTcsIFBoaWxpcHAgU3Rhbm5lciBhIMOpY3JpdMKgOg0K
PiBPbiBXZWQsIDIwMjUtMTAtMjkgYXQgMTA6MTEgKzAxMDAsIFBpZXJyZS1FcmljIFBlbGxvdXgt
UHJheWVyIHdyb3RlOg0KPj4gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL21lc2EvbWVz
YS8tL2lzc3Vlcy8xMzkwOMKgcG9pbnRlZCBvdXQNCj4gDQo+IFRoaXMgbGluayBzaG91bGQgYmUg
bW92ZWQgdG8gdGhlIHRhZyBzZWN0aW9uIGF0IHRoZSBib3R0b20gYXQgYSBDbG9zZXM6DQo+IHRh
Zy4gT3B0aW9uYWxseSBhIFJlcG9ydGVkLWJ5OiwgdG9vLg0KDQpUaGUgYnVnIHJlcG9ydCBpcyBh
Ym91dCBhIGRpZmZlcmVudCBpc3N1ZS4gVGhlIHBvdGVudGlhbCBkZWFkbG9jayBiZWluZyBmaXhl
ZCBieSANCnRoaXMgcGF0Y2ggd2FzIGRpc2NvdmVyZWQgd2hpbGUgaW52ZXN0aWdhdGluZyBpdC4N
CkknbGwgYWRkIGEgUmVwb3J0ZWQtYnkgdGFnIHRob3VnaC4NCg0KPiANCj4+IGEgcG9zc2libGUg
ZGVhZGxvY2s6DQo+Pg0KPj4gWyAxMjMxLjYxMTAzMV3CoCBQb3NzaWJsZSBpbnRlcnJ1cHQgdW5z
YWZlIGxvY2tpbmcgc2NlbmFyaW86DQo+Pg0KPj4gWyAxMjMxLjYxMTAzM13CoMKgwqDCoMKgwqDC
oCBDUFUwwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgQ1BVMQ0KPj4gWyAx
MjMxLjYxMTAzNF3CoMKgwqDCoMKgwqDCoCAtLS0twqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgLS0tLQ0KPj4gWyAxMjMxLjYxMTAzNV3CoMKgIGxvY2soJnhhLT54YV9sb2Nr
IzE3KTsNCj4+IFsgMTIzMS42MTEwMzhdwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbG9jYWxfaXJxX2Rpc2FibGUoKTsNCj4+IFsg
MTIzMS42MTEwMzldwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgbG9jaygmZmVuY2UtPmxvY2spOw0KPj4gWyAxMjMxLjYxMTA0MV3C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBsb2NrKCZ4YS0+eGFfbG9jayMxNyk7DQo+PiBbIDEyMzEuNjExMDQ0XcKgwqAgPEludGVy
cnVwdD4NCj4+IFsgMTIzMS42MTEwNDVdwqDCoMKgwqAgbG9jaygmZmVuY2UtPmxvY2spOw0KPj4g
WyAxMjMxLjYxMTA0N10NCj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKioqIERF
QURMT0NLICoqKg0KPj4NCj4gDQo+IFRoZSBjb21taXQgbWVzc2FnZSBpcyBsYWNraW5nIGFuIGV4
cGxhbmF0aW9uIGFzIHRvIF9ob3dfIGFuZCBfd2hlbl8gdGhlDQo+IGRlYWRsb2NrIGNvbWVzIHRv
IGJlLiBUaGF0J3MgYSBwcmVyZXF1aXNpdGUgZm9yIHVuZGVyc3RhbmRpbmcgd2h5IHRoZQ0KPiBi
ZWxvdyBpcyB0aGUgcHJvcGVyIGZpeCBhbmQgc29sdXRpb24uDQoNCkkgY29weS1wYXN0ZWQgYSBz
bWFsbCBjaHVuayBvZiB0aGUgZnVsbCBkZWFkbG9jayBhbmFseXNpcyByZXBvcnQgaW5jbHVkZWQg
aW4gdGhlIA0KdGlja2V0IGJlY2F1c2UgaXQncyAzMDArIGxpbmVzIGxvbmcuIENvcHlpbmcgdGhl
IGZ1bGwgbG9nIGlzbid0IHVzZWZ1bCBJTU8sIGJ1dCANCkkgY2FuIGFkZCBtb3JlIGNvbnRleHQu
DQoNClRoZSBwcm9ibGVtIGlzIHRoYXQgYSB0aHJlYWQgKENQVTAgYWJvdmUpIGNhbiBsb2NrIHRo
ZSBqb2IncyBkZXBlbmRlbmNpZXMgDQp4YV9hcnJheSB3aXRob3V0IGRpc2FibGluZyB0aGUgaW50
ZXJydXB0cy4NCklmIGEgZmVuY2Ugc2lnbmFscyB3aGlsZSBDUFUwIGhvbGRzIHRoaXMgbG9jayBh
bmQgZHJtX3NjaGVkX2VudGl0eV9raWxsX2pvYnNfY2IgDQppcyBjYWxsZWQsIGl0IHdpbGwgdHJ5
IHRvIGdyYWIgdGhlIHhhX2FycmF5IGxvY2sgd2hpY2ggaXMgbm90IHBvc3NpYmxlIGJlY2F1c2Ug
DQpDUFUwIGhvbGRzIGl0IGFscmVhZHkuDQoNCg0KPiANCj4gVGhlIGlzc3VlIHNlZW1zIHRvIGJl
IHRoYXQgeW91IGNhbm5vdCBwZXJmb3JtIGNlcnRhaW4gdGFza3MgZnJvbSB3aXRoaW4NCj4gdGhh
dCB3b3JrIGl0ZW0/DQo+IA0KPj4gTXkgaW5pdGlhbCBmaXggd2FzIHRvIHJlcGxhY2UgeGFfZXJh
c2UgYnkgeGFfZXJhc2VfaXJxLCBidXQgQ2hyaXN0aWFuDQo+PiBwb2ludGVkIG91dCB0aGF0IGNh
bGxpbmcgZG1hX2ZlbmNlX2FkZF9jYWxsYmFjayBmcm9tIGEgY2FsbGJhY2sgY2FuDQo+PiBhbHNv
IGRlYWRsb2NrIGlmIHRoZSBzaWduYWxsaW5nIGZlbmNlIGFuZCB0aGUgb25lIHBhc3NlZCB0bw0K
Pj4gZG1hX2ZlbmNlX2FkZF9jYWxsYmFjayBzaGFyZSB0aGUgc2FtZSBsb2NrLg0KPj4NCj4+IFRv
IGZpeCBib3RoIGlzc3VlcywgdGhlIGNvZGUgaXRlcmF0aW5nIG9uIGRlcGVuZGVuY2llcyBhbmQg
cmUtYXJtaW5nIHRoZW0NCj4+IGlzIG1vdmVkIG91dCB0byBkcm1fc2NoZWRfZW50aXR5X2tpbGxf
am9ic193b3JrLg0KPj4NCj4+IFN1Z2dlc3RlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPg0KPj4gU2lnbmVkLW9mZi1ieTogUGllcnJlLUVyaWMgUGVsbG91
eC1QcmF5ZXIgPHBpZXJyZS1lcmljLnBlbGxvdXgtcHJheWVyQGFtZC5jb20+DQo+PiAtLS0NCj4+
ICDCoGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZW50aXR5LmMgfCAzNCArKysrKysr
KysrKysrLS0tLS0tLS0tLS0NCj4+ICDCoDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCsp
LCAxNSBkZWxldGlvbnMoLSkNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3Nj
aGVkdWxlci9zY2hlZF9lbnRpdHkuYyBiL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRf
ZW50aXR5LmMNCj4+IGluZGV4IGM4ZTk0OWY0YTU2OC4uZmUxNzRhNDg1N2JlIDEwMDY0NA0KPj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9lbnRpdHkuYw0KPj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9lbnRpdHkuYw0KPj4gQEAgLTE3MywyNiAr
MTczLDE1IEBAIGludCBkcm1fc2NoZWRfZW50aXR5X2Vycm9yKHN0cnVjdCBkcm1fc2NoZWRfZW50
aXR5ICplbnRpdHkpDQo+PiAgwqB9DQo+PiAgwqBFWFBPUlRfU1lNQk9MKGRybV9zY2hlZF9lbnRp
dHlfZXJyb3IpOw0KPj4gICANCj4+ICtzdGF0aWMgdm9pZCBkcm1fc2NoZWRfZW50aXR5X2tpbGxf
am9ic19jYihzdHJ1Y3QgZG1hX2ZlbmNlICpmLA0KPj4gKwkJCQkJwqAgc3RydWN0IGRtYV9mZW5j
ZV9jYiAqY2IpOw0KPj4gKw0KPj4gIMKgc3RhdGljIHZvaWQgZHJtX3NjaGVkX2VudGl0eV9raWxs
X2pvYnNfd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndyaykNCj4+ICDCoHsNCj4+ICDCoAlzdHJ1
Y3QgZHJtX3NjaGVkX2pvYiAqam9iID0gY29udGFpbmVyX29mKHdyaywgdHlwZW9mKCpqb2IpLCB3
b3JrKTsNCj4+IC0NCj4+IC0JZHJtX3NjaGVkX2ZlbmNlX3NjaGVkdWxlZChqb2ItPnNfZmVuY2Us
IE5VTEwpOw0KPj4gLQlkcm1fc2NoZWRfZmVuY2VfZmluaXNoZWQoam9iLT5zX2ZlbmNlLCAtRVNS
Q0gpOw0KPj4gLQlXQVJOX09OKGpvYi0+c19mZW5jZS0+cGFyZW50KTsNCj4+IC0Jam9iLT5zY2hl
ZC0+b3BzLT5mcmVlX2pvYihqb2IpOw0KPiANCj4gQ2FuIGZyZWVfam9iKCkgcmVhbGx5IG5vdCBi
ZSBjYWxsZWQgZnJvbSB3aXRoaW4gd29yayBpdGVtIGNvbnRleHQ/DQoNCkl0J3Mgc3RpbGwgY2Fs
bGVkIGZyb20gZHJtX3NjaGVkX2VudGl0eV9raWxsX2pvYnNfd29yayBidXQgdGhlIGRpZmYgaXMg
c2xpZ2h0bHkgDQpjb25mdXNpbmcuDQoNClBpZXJyZS1FcmljDQoNCg0KPiANCj4gDQo+IFAuDQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGlu
YXJvLm9yZwo=

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AE27779A949
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 16:59:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A82B23F4C9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 14:59:48 +0000 (UTC)
Received: from domac.alu.hr (domac.alu.unizg.hr [161.53.235.3])
	by lists.linaro.org (Postfix) with ESMTPS id A8B8F3F03D
	for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Aug 2023 14:09:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=alu.unizg.hr header.s=mail header.b=pSokGjBO;
	dkim=pass header.d=alu.unizg.hr header.s=mail header.b=SXP3HgNF;
	spf=pass (lists.linaro.org: domain of mirsad.todorovac@alu.unizg.hr designates 161.53.235.3 as permitted sender) smtp.mailfrom=mirsad.todorovac@alu.unizg.hr;
	dmarc=pass (policy=none) header.from=alu.unizg.hr
Received: from localhost (localhost [127.0.0.1])
	by domac.alu.hr (Postfix) with ESMTP id 013306015F;
	Fri, 25 Aug 2023 16:09:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=alu.unizg.hr; s=mail;
	t=1692972556; bh=C6RyGw6Doe5b7Di5ABULYxyBWYjjYtLDWqBCweq4ToI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=pSokGjBOQJm6LakbU3K+zm7WpvcYPQAoVDh1gcxlNkEz9BVEV6fYkETQUX/oQm5WQ
	 yhWPIW5ZbyQhioQtGm3FzUkAzEhb/cz06/4WhZw1pnhlBe41euWD9Om4t4xP+iUl2t
	 PG3znmRfXdHic1Cr3iqQMLbUSnX1VqbAuUgB/J79NRmK80o2X5g2oz6hAj3A8MAp8x
	 uHbyltlh3hGYGe+S9aBU0ajBnSQFqJYhN93GQT31NBA5/pVUIgoJynIUDy1gaOnY8N
	 6sP46hEVSQENmJ/4RIk9LTqNVaVDTlc3v5H+81wAqyHOSYDQCyxfg1fyOBeqxHKVZk
	 6Vh8om7Vcsf1w==
X-Virus-Scanned: Debian amavisd-new at domac.alu.hr
Received: from domac.alu.hr ([127.0.0.1])
	by localhost (domac.alu.hr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id URlArMhbozpU; Fri, 25 Aug 2023 16:09:11 +0200 (CEST)
Received: from [192.168.1.6] (unknown [94.250.191.183])
	by domac.alu.hr (Postfix) with ESMTPSA id A0DCF60186;
	Fri, 25 Aug 2023 16:08:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=alu.unizg.hr; s=mail;
	t=1692972542; bh=C6RyGw6Doe5b7Di5ABULYxyBWYjjYtLDWqBCweq4ToI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=SXP3HgNF064KiwtjlZQofZhtYEIBVLRofJifkPjsXYkOocD271aNXN46ywtUNqhSP
	 dhn50Cd3VO8v+x/K8ETj3sQIJYJvQ2Oe3GdInajeP9rTBFRnTlF3Sx35tZEn3T1D/B
	 OsU7zWVxDWe0yocgRjLjd1lpJHR74e+1vPgcQuOFik5F/8fct7MAEoovtf+pC+3mi3
	 y1U3/DWOOZ5NHEgzePI1wYtOknwRMVofrMViO/s/ZaeLvF47zB33fo/K/FM+AzqXt1
	 cMDGSwrUc9335ET/MvqVA2AUd9yjY1ehTKN4XcyhqI/ledCSjYBeCFYO3x8wuCf9cE
	 oGvB6g7H+AswQ==
Message-ID: <66c3a977-1dc2-e8dd-592b-d127fb28179e@alu.unizg.hr>
Date: Fri, 25 Aug 2023 16:08:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 linux-kernel@vger.kernel.org
References: <43668e49-c2c0-9979-9de3-b4904c2a8f82@alu.unizg.hr>
 <36b4e667-c287-1614-fe1f-5e772850d1fb@alu.unizg.hr>
 <b74a5cc3-8174-67f3-17ab-2e8a7d8fa1a6@amd.com>
 <5d83d59a-3c49-aae7-61ca-de9c2f3ba9c9@alu.unizg.hr>
 <d321918e-6f3b-4984-9163-427b579dc57e@amd.com>
 <52eb519d-2cb1-2036-65af-0737714967f0@alu.unizg.hr>
 <fa90b3dc-0de7-ee10-b448-bab543074096@amd.com>
From: Mirsad Todorovac <mirsad.todorovac@alu.unizg.hr>
In-Reply-To: <fa90b3dc-0de7-ee10-b448-bab543074096@amd.com>
X-Rspamd-Queue-Id: A8B8F3F03D
X-Spamd-Bar: ----------
X-Spamd-Result: default: False [-10.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_IN_DNSWL_HI(-1.00)[161.53.235.3:from,94.250.191.183:received];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[alu.unizg.hr,none];
	R_DKIM_ALLOW(-0.20)[alu.unizg.hr:s=mail];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:2108, ipnet:161.53.0.0/16, country:HR];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,gmail.com,ffwll.ch,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[alu.unizg.hr:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-MailFrom: mirsad.todorovac@alu.unizg.hr
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ROITM3FAIKZZ7OS4KKXQODMEMGPL7JXV
X-Message-ID-Hash: ROITM3FAIKZZ7OS4KKXQODMEMGPL7JXV
X-Mailman-Approved-At: Mon, 11 Sep 2023 14:59:21 +0000
CC: Luben Tuikov <luben.tuikov@amd.com>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [BUG] KCSAN: data-race in drm_sched_entity_is_ready [gpu_sched] / drm_sched_entity_push_job [gpu_sched]
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ROITM3FAIKZZ7OS4KKXQODMEMGPL7JXV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgQ2hyaXN0aWFuLA0KDQpBaGEsIHRoYW5rcywgdGhhdCBleHBsYWlucyBpdC4gVGhlbiB0aGUg
S0NTQU4gcmVwb3J0IG11c3QgYmUgZmFsc2UgcG9zaXRpdmUuDQoNCktpbmQgcmVnYXJkcywNCk1p
cnNhZA0KDQpPbiA4LzI1LzIzIDA5OjA1LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBIaSBN
aXJzYWQsDQo+IA0KPiB0aGUgbmFtZSBTUFNDIHN0YW5kcyBmb3IgU2luZ2xlUHJvZHVjZXJTaW5n
bGVDb25zdW1lciwgc28geWVzIGV2ZW4gYnkgdGhlIG5hbWUgb2YgdGhlIGNvbXBvbmVudCB3ZSBt
YWtlIGl0IGNsZWFyIHRoYXQgdGhpcyBjYW4gb25seSBiZSB1c2VkIGJ5IG9uZSBwcm9kdWNlciBh
bmQgb25lIGNvbnN1bWVyIHRocmVhZCBhdCB0aGUgc2FtZSB0aW1lLg0KPiANCj4gSGVyZSBkaXNh
YmxpbmcgcHJlZW1wdGlvbiBpcyBqdXN0IGRvbmUgc28gdGhhdCB0aGUgY29uc3VtZXIgdGhyZWFk
IGRvZXNuJ3QgYnVzeSBsb29wIGZvciB0aGUgcHJvZHVjZXIgdGhyZWFkIHRvIGJlIHNjaGVkdWxl
ZCBpbiBhZ2Fpbi4NCj4gDQo+IFJlZ2FyZHMsDQo+IENocmlzdGlhbi4NCj4gDQo+IEFtIDI0LjA4
LjIzIHVtIDE5OjQ2IHNjaHJpZWIgTWlyc2FkIEdvcmFuIFRvZG9yb3ZhYzoNCj4+IFRoYW5rIHlv
dSwgQ2hyaXN0aWFuLg0KPj4NCj4+IEdsYWQgdG8gaGVhciBhYm91dCB0aGF0Lg0KPj4NCj4+IEhv
d2V2ZXIsIEkgZ3Vlc3MgdGhpcyBhc3N1bWVzIHRoYXQgdGhpcyBwaWVjZSBvZiBjb2RlIGJldHdl
ZW4NCj4+DQo+PiAtLS0tLTw+LS0tLS0NCj4+IMKgwqDCoMKgIHByZWVtcHRfZGlzYWJsZSgpOw0K
Pj4NCj4+IMKgwqDCoMKgIHRhaWwgPSAoc3RydWN0IHNwc2Nfbm9kZSAqKilhdG9taWNfbG9uZ194
Y2hnKCZxdWV1ZS0+dGFpbCwgKGxvbmcpJm5vZGUtPm5leHQpOw0KPj4gwqDCoMKgwqAgV1JJVEVf
T05DRSgqdGFpbCwgbm9kZSk7DQo+PiDCoMKgwqDCoCBhdG9taWNfaW5jKCZxdWV1ZS0+am9iX2Nv
dW50KTsNCj4+DQo+PiDCoMKgwqDCoCAvKg0KPj4gwqDCoMKgwqDCoCAqIEluIGNhc2Ugb2YgZmly
c3QgZWxlbWVudCB2ZXJpZnkgbmV3IG5vZGUgd2lsbCBiZSB2aXNpYmxlIHRvIHRoZSBjb25zdW1l
cg0KPj4gwqDCoMKgwqDCoCAqIHRocmVhZCB3aGVuIHdlIHBpbmcgdGhlIGtlcm5lbCB0aHJlYWQg
dGhhdCB0aGVyZSBpcyBuZXcgd29yayB0byBkby4NCj4+IMKgwqDCoMKgwqAgKi8NCj4+IMKgwqDC
oMKgIHNtcF93bWIoKTsNCj4+DQo+PiDCoMKgwqDCoCBwcmVlbXB0X2VuYWJsZSgpOw0KPj4gLS0t
LS08Pi0tLS0tDQo+Pg0KPj4gLi4uIGV4ZWN1dGVzIG9ubHkgb24gb25lIENQVS9jb3JlL3RocmVh
ZD8NCj4+DQo+PiBJIHVuZGVyc3Rvb2QgdGhhdCBwcmVlbXB0X2Rpc2FibGUoKSBkaXNhYmxlcyBv
bmx5IGludGVycnVwdHMgb24gb25lIGNvcmUvQ1BVOg0KPj4NCj4+IGh0dHBzOi8va2VybmVsbmV3
Ymllcy5rZXJuZWxuZXdiaWVzLm5hcmtpdmUuY29tLzZMVGxnc0FlL3ByZWVtcHQtZGlzYWJsZS1k
aXNhYmxlcy1wcmVlbXB0aW9uLW9uLWFsbC1wcm9jZXNzb3JzDQo+Pg0KPj4gU28sIHdlIG1pZ2h0
IGhhdmUgYSByYWNlIGluIHRoZW9yeSBiZXR3ZWVuIFdSSVRFX09OQ0UoKSBhbmQgYXRvbWljX2lu
YygpLg0KPj4NCj4+IEtpbmQgcmVnYXJkcywNCj4+IE1pcnNhZA0KPj4NCj4+DQo+PiBPbiA4LzIx
LzIwMjMgODoyMiBQTSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+PiBJJ20gbm90IHN1cmUg
YWJvdXQgdGhhdC4NCj4+Pg0KPj4+IE9uIHRoZSBvbmUgaGFuZCBpdCBtaWdodCBnZW5lcmF0ZSBz
b21lIG5vaXNlLiBJIGtub3cgdG9ucyBvZiBjYXNlcyB3aGVyZSBsb2dpYyBpczogT2sgaWYgd2Ug
c2VlIHRoZSB1cGRhdGVkIHZhbHVlIGltbWVkaWF0ZWx5IGl0IHdpbGwgb3B0aW1pemUgdGhpbmdz
LCBidXQgaWYgbm90IGl0J3MgdW5wcm9ibGVtYXRpYyBiZWNhdXNlIHRoZXJlIGlzIGFub3RoZXIg
Y2hlY2sgYWZ0ZXIgdGhlIG5leHQgbWVtb3J5IGJhcnJpZXIuDQo+Pj4NCj4+PiBPbiB0aGUgb3Ro
ZXIgaGFuZCB3ZSBwcm9iYWJseSBoYXZlIGNhc2VzIHdoZXJlIHRoaXMgaXMgbm90IGNvcnJlY3Rs
eSBpbXBsZW1lbnRlZC4gU28gZG91YmxlIGNoZWNraW5nIHRob3NlIHdvdWxkIG1vc3QgbGlrZSBi
ZSBnb29kIGlkZWEuDQo+Pj4NCj4+PiBSZWdhcmRzLA0KPj4+IENocmlzdGlhbi4NCj4+Pg0KPj4+
IEFtIDIxLjA4LjIzIHVtIDE2OjI4IHNjaHJpZWIgTWlyc2FkIFRvZG9yb3ZhYzoNCj4+Pj4gSGkg
Q2hyaXN0aWFuLA0KPj4+Pg0KPj4+PiBUaGFuayB5b3UgZm9yIHRoZSB1cGRhdGUuDQo+Pj4+DQo+
Pj4+IFNob3VsZCBJIGNvbnRpbnVlIHJlcG9ydGluZyB3aGF0IEtDU0FOIGdpdmVzPyBJIHdpbGwg
dHJ5IHRvIGZpbHRlciB0aGVzZSB0byBzYXZlIHlvdXIgdGltZSBmb3INCj4+Pj4gZXZhbHVhdGlv
biAuLi4NCj4+Pj4NCj4+Pj4gS2luZCByZWdhcmRzLA0KPj4+PiBNaXJzYWQNCj4+Pj4NCj4+Pj4g
T24gOC8yMS8yMyAxNToyMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+Pj4+IEhpIE1pcnNh
ZCwNCj4+Pj4+DQo+Pj4+PiB3ZWxsIHRoaXMgaXMgYSBmYWxzZSBwb3NpdGl2ZS4NCj4+Pj4+DQo+
Pj4+PiBUaGF0IGRybV9zY2hlZF9lbnRpdHlfaXNfcmVhZHkoKSBkb2Vzbid0IHNlZSB0aGUgZGF0
YSB3cml0dGVuIGJ5IGRybV9zY2hlZF9lbnRpdHlfcHVzaF9qb2IoKSBpcyBwYXJ0IG9mIHRoZSBs
b2dpYyBoZXJlLg0KPj4+Pj4NCj4+Pj4+IFJlZ2FyZHMsDQo+Pj4+PiBDaHJpc3RpYW4uDQo+Pj4+
Pg0KPj4+Pj4gQW0gMTguMDguMjMgdW0gMTU6NDQgc2NocmllYiBNaXJzYWQgVG9kb3JvdmFjOg0K
Pj4+Pj4+IE9uIDgvMTcvMjMgMjE6NTQsIE1pcnNhZCBUb2Rvcm92YWMgd3JvdGU6DQo+Pj4+Pj4+
IEhpLA0KPj4+Pj4+Pg0KPj4+Pj4+PiBUaGlzIGlzIHlvdXIgZnJpZW5kbHkgYnVnIHJlcG9ydGVy
Lg0KPj4+Pj4+Pg0KPj4+Pj4+PiBUaGUgZW52aXJvbm1lbnQgaXMgdmFuaWxsYSB0b3J2YWxkcyB0
cmVlIGtlcm5lbCBvbiBVYnVudHUgMjIuMDQgTFRTIGFuZCBhIFJ5emVuIDc5NTBYIGJveC4NCj4+
Pj4+Pj4NCj4+Pj4+Pj4gUGxlYXNlIGZpbmQgYXR0YWNoZWQgdGhlIGNvbXBsZXRlIGRtZXNnIG91
dHB1dCBmcm9tIHRoZSByaW5nIGJ1ZmZlciBhbmQgbHNodyBvdXRwdXQuDQo+Pj4+Pj4+DQo+Pj4+
Pj4+IE5PVEU6IFRoZSBrZXJuZWwgcmVwb3J0cyB0YWludGVkIGtlcm5lbCwgYnV0IHRvIG15IGtu
b3dsZWRnZSB0aGVyZSBhcmUgbm8gcHJvcHJpZXRhcnkgKEcpIG1vZHVsZXMsDQo+Pj4+Pj4+IMKg
wqDCoMKgwqDCoCBidXQgdGhpcyB0YWludCBpcyB0dXJuZWQgb24gYnkgdGhlIHByZXZpb3VzIGJ1
Z3MuDQo+Pj4+Pj4+DQo+Pj4+Pj4+IGRtZXNnIGV4Y2VycHQ6DQo+Pj4+Pj4+DQo+Pj4+Pj4+IFsg
ODc5MS44NjQ1NzZdID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PQ0KPj4+Pj4+PiBbIDg3OTEuODY0NjQ4XSBCVUc6IEtDU0FO
OiBkYXRhLXJhY2UgaW4gZHJtX3NjaGVkX2VudGl0eV9pc19yZWFkeSBbZ3B1X3NjaGVkXSAvIGRy
bV9zY2hlZF9lbnRpdHlfcHVzaF9qb2IgW2dwdV9zY2hlZF0NCj4+Pj4+Pj4NCj4+Pj4+Pj4gWyA4
NzkxLjg2NDc3Nl0gd3JpdGUgKG1hcmtlZCkgdG8gMHhmZmZmOWI3NDQ5MWI3YzQwIG9mIDggYnl0
ZXMgYnkgdGFzayAzODA3IG9uIGNwdSAxODoNCj4+Pj4+Pj4gWyA4NzkxLjg2NDc4OF3CoCBkcm1f
c2NoZWRfZW50aXR5X3B1c2hfam9iKzB4ZjQvMHgyYTAgW2dwdV9zY2hlZF0NCj4+Pj4+Pj4gWyA4
NzkxLjg2NDg1Ml3CoCBhbWRncHVfY3NfaW9jdGwrMHgzODg4LzB4M2RlMCBbYW1kZ3B1XQ0KPj4+
Pj4+PiBbIDg3OTEuODY4NzMxXcKgIGRybV9pb2N0bF9rZXJuZWwrMHgxMjcvMHgyMTAgW2RybV0N
Cj4+Pj4+Pj4gWyA4NzkxLjg2OTIyMl3CoCBkcm1faW9jdGwrMHgzOGYvMHg2ZjAgW2RybV0NCj4+
Pj4+Pj4gWyA4NzkxLjg2OTcxMV3CoCBhbWRncHVfZHJtX2lvY3RsKzB4N2UvMHhlMCBbYW1kZ3B1
XQ0KPj4+Pj4+PiBbIDg3OTEuODczNjYwXcKgIF9feDY0X3N5c19pb2N0bCsweGQyLzB4MTIwDQo+
Pj4+Pj4+IFsgODc5MS44NzM2NzZdwqAgZG9fc3lzY2FsbF82NCsweDU4LzB4OTANCj4+Pj4+Pj4g
WyA4NzkxLjg3MzY4OF3CoCBlbnRyeV9TWVNDQUxMXzY0X2FmdGVyX2h3ZnJhbWUrMHg3My8weGRk
DQo+Pj4+Pj4+DQo+Pj4+Pj4+IFsgODc5MS44NzM3MTBdIHJlYWQgdG8gMHhmZmZmOWI3NDQ5MWI3
YzQwIG9mIDggYnl0ZXMgYnkgdGFzayAxMTE5IG9uIGNwdSAyNzoNCj4+Pj4+Pj4gWyA4NzkxLjg3
MzcyMl3CoCBkcm1fc2NoZWRfZW50aXR5X2lzX3JlYWR5KzB4MTYvMHg1MCBbZ3B1X3NjaGVkXQ0K
Pj4+Pj4+PiBbIDg3OTEuODczNzg2XcKgIGRybV9zY2hlZF9zZWxlY3RfZW50aXR5KzB4MWM3LzB4
MjIwIFtncHVfc2NoZWRdDQo+Pj4+Pj4+IFsgODc5MS44NzM4NDldwqAgZHJtX3NjaGVkX21haW4r
MHhkMi8weDUwMCBbZ3B1X3NjaGVkXQ0KPj4+Pj4+PiBbIDg3OTEuODczOTEyXcKgIGt0aHJlYWQr
MHgxOGIvMHgxZDANCj4+Pj4+Pj4gWyA4NzkxLjg3MzkyNF3CoCByZXRfZnJvbV9mb3JrKzB4NDMv
MHg3MA0KPj4+Pj4+PiBbIDg3OTEuODczOTM5XcKgIHJldF9mcm9tX2ZvcmtfYXNtKzB4MWIvMHgz
MA0KPj4+Pj4+Pg0KPj4+Pj4+PiBbIDg3OTEuODczOTU1XSB2YWx1ZSBjaGFuZ2VkOiAweDAwMDAw
MDAwMDAwMDAwMDAgLT4gMHhmZmZmOWI3NTBlYmNmYzAwDQo+Pj4+Pj4+DQo+Pj4+Pj4+IFsgODc5
MS44NzM5NzFdIFJlcG9ydGVkIGJ5IEtlcm5lbCBDb25jdXJyZW5jeSBTYW5pdGl6ZXIgb246DQo+
Pj4+Pj4+IFsgODc5MS44NzM5ODBdIENQVTogMjcgUElEOiAxMTE5IENvbW06IGdmeF8wLjAuMCBU
YWludGVkOiBHwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIEwgNi41LjAtcmM2LW5ldC1jZmcta2Nz
YW4tMDAwMzgtZzE2OTMxODU5YTY1MCAjMzUNCj4+Pj4+Pj4gWyA4NzkxLjg3Mzk5NF0gSGFyZHdh
cmUgbmFtZTogQVNSb2NrIFg2NzBFIFBHIExpZ2h0bmluZy9YNjcwRSBQRyBMaWdodG5pbmcsIEJJ
T1MgMS4yMSAwNC8yNi8yMDIzDQo+Pj4+Pj4+IFsgODc5MS44NzQwMDJdID09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQ0KPj4+
Pj4+DQo+Pj4+Pj4gUC5TLg0KPj4+Pj4+DQo+Pj4+Pj4gQWNjb3JkaW5nIHRvIE1yLiBIZW8ncyBp
bnN0cnVjdGlvbnMsIEkgYW0gYWRkaW5nIHRoZSB1bndvdW5kIHRyYWNlIGhlcmU6DQo+Pj4+Pj4N
Cj4+Pj4+PiBbIDE4NzkuNzA2NTE4XSA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0NCj4+Pj4+PiBbIDE4NzkuNzA2NjE2XSBC
VUc6IEtDU0FOOiBkYXRhLXJhY2UgaW4gZHJtX3NjaGVkX2VudGl0eV9pc19yZWFkeSBbZ3B1X3Nj
aGVkXSAvIGRybV9zY2hlZF9lbnRpdHlfcHVzaF9qb2IgW2dwdV9zY2hlZF0NCj4+Pj4+Pg0KPj4+
Pj4+IFsgMTg3OS43MDY3MzddIHdyaXRlIChtYXJrZWQpIHRvIDB4ZmZmZjhmMzY3Mjc0OGM0MCBv
ZiA4IGJ5dGVzIGJ5IHRhc2sgNDA4NyBvbiBjcHUgMTA6DQo+Pj4+Pj4gWyAxODc5LjcwNjc0OF0g
ZHJtX3NjaGVkX2VudGl0eV9wdXNoX2pvYiAoLi9pbmNsdWRlL2RybS9zcHNjX3F1ZXVlLmg6NzQg
ZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9lbnRpdHkuYzo1NzQpIGdwdV9zY2hlZA0K
Pj4+Pj4+IFsgMTg3OS43MDY4MDhdIGFtZGdwdV9jc19pb2N0bCAoZHJpdmVycy9ncHUvZHJtL2Ft
ZC9hbWRncHUvYW1kZ3B1X2NzLmM6MTM3NSBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfY3MuYzoxNDY5KSBhbWRncHUNCj4+Pj4+PiBbIDE4NzkuNzEwNTg5XSBkcm1faW9jdGxfa2Vy
bmVsIChkcml2ZXJzL2dwdS9kcm0vZHJtX2lvY3RsLmM6Nzg4KSBkcm0NCj4+Pj4+PiBbIDE4Nzku
NzExMDY4XSBkcm1faW9jdGwgKGRyaXZlcnMvZ3B1L2RybS9kcm1faW9jdGwuYzo4OTIpIGRybQ0K
Pj4+Pj4+IFsgMTg3OS43MTE1NTFdIGFtZGdwdV9kcm1faW9jdGwgKGRyaXZlcnMvZ3B1L2RybS9h
bWQvYW1kZ3B1L2FtZGdwdV9kcnYuYzoyNzQ4KSBhbWRncHUNCj4+Pj4+PiBbIDE4NzkuNzE1MzE5
XSBfX3g2NF9zeXNfaW9jdGwgKGZzL2lvY3RsLmM6NTEgZnMvaW9jdGwuYzo4NzAgZnMvaW9jdGwu
Yzo4NTYgZnMvaW9jdGwuYzo4NTYpDQo+Pj4+Pj4gWyAxODc5LjcxNTMzNF0gZG9fc3lzY2FsbF82
NCAoYXJjaC94ODYvZW50cnkvY29tbW9uLmM6NTAgYXJjaC94ODYvZW50cnkvY29tbW9uLmM6ODAp
DQo+Pj4+Pj4gWyAxODc5LjcxNTM0NV0gZW50cnlfU1lTQ0FMTF82NF9hZnRlcl9od2ZyYW1lIChh
cmNoL3g4Ni9lbnRyeS9lbnRyeV82NC5TOjEyMCkNCj4+Pj4+Pg0KPj4+Pj4+IFsgMTg3OS43MTUz
NjVdIHJlYWQgdG8gMHhmZmZmOGYzNjcyNzQ4YzQwIG9mIDggYnl0ZXMgYnkgdGFzayAxMDk4IG9u
IGNwdSAxMToNCj4+Pj4+PiBbIDE4NzkuNzE1Mzc2XSBkcm1fc2NoZWRfZW50aXR5X2lzX3JlYWR5
IChkcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2VudGl0eS5jOjEzNCkgZ3B1X3NjaGVk
DQo+Pj4+Pj4gWyAxODc5LjcxNTQzNV0gZHJtX3NjaGVkX3NlbGVjdF9lbnRpdHkgKGRyaXZlcnMv
Z3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jOjI0OCBkcml2ZXJzL2dwdS9kcm0vc2NoZWR1
bGVyL3NjaGVkX21haW4uYzo4OTMpIGdwdV9zY2hlZA0KPj4+Pj4+IFsgMTg3OS43MTU0OTVdIGRy
bV9zY2hlZF9tYWluIChkcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYzoxMDE5
KSBncHVfc2NoZWQNCj4+Pj4+PiBbIDE4NzkuNzE1NTU0XSBrdGhyZWFkIChrZXJuZWwva3RocmVh
ZC5jOjM4OSkNCj4+Pj4+PiBbIDE4NzkuNzE1NTYzXSByZXRfZnJvbV9mb3JrIChhcmNoL3g4Ni9r
ZXJuZWwvcHJvY2Vzcy5jOjE0NSkNCj4+Pj4+PiBbIDE4NzkuNzE1NTc1XSByZXRfZnJvbV9mb3Jr
X2FzbSAoYXJjaC94ODYvZW50cnkvZW50cnlfNjQuUzozMTIpDQo+Pj4+Pj4NCj4+Pj4+PiBbIDE4
NzkuNzE1NTkwXSB2YWx1ZSBjaGFuZ2VkOiAweDAwMDAwMDAwMDAwMDAwMDAgLT4gMHhmZmZmOGYz
NjA2NjNkYzAwDQo+Pj4+Pj4NCj4+Pj4+PiBbIDE4NzkuNzE1NjA0XSBSZXBvcnRlZCBieSBLZXJu
ZWwgQ29uY3VycmVuY3kgU2FuaXRpemVyIG9uOg0KPj4+Pj4+IFsgMTg3OS43MTU2MTJdIENQVTog
MTEgUElEOiAxMDk4IENvbW06IGdmeF8wLjAuMCBUYWludGVkOiBHwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIEzCoMKgwqDCoCA2LjUuMC1yYzYrICM0Nw0KPj4+Pj4+IFsgMTg3OS43MTU2MjRdIEhh
cmR3YXJlIG5hbWU6IEFTUm9jayBYNjcwRSBQRyBMaWdodG5pbmcvWDY3MEUgUEcgTGlnaHRuaW5n
LCBCSU9TIDEuMjEgMDQvMjYvMjAyMw0KPj4+Pj4+IFsgMTg3OS43MTU2MzFdID09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQ0K
Pj4+Pj4+DQo+Pj4+Pj4gSXQgc2VlbXMgdGhhdCB0aGUgbGluZSBpbiBxdWVzdGlvbiBtaWdodCBi
ZToNCj4+Pj4+Pg0KPj4+Pj4+IMKgwqDCoMKgZmlyc3QgPSBzcHNjX3F1ZXVlX3B1c2goJmVudGl0
eS0+am9iX3F1ZXVlLCAmc2NoZWRfam9iLT5xdWV1ZV9ub2RlKTsNCj4+Pj4+Pg0KPj4+Pj4+IHdo
aWNoIGV4cGFuZHMgdG86DQo+Pj4+Pj4NCj4+Pj4+PiBzdGF0aWMgaW5saW5lIGJvb2wgc3BzY19x
dWV1ZV9wdXNoKHN0cnVjdCBzcHNjX3F1ZXVlICpxdWV1ZSwgc3RydWN0IHNwc2Nfbm9kZSAqbm9k
ZSkNCj4+Pj4+PiB7DQo+Pj4+Pj4gwqDCoMKgwqBzdHJ1Y3Qgc3BzY19ub2RlICoqdGFpbDsNCj4+
Pj4+Pg0KPj4+Pj4+IMKgwqDCoMKgbm9kZS0+bmV4dCA9IE5VTEw7DQo+Pj4+Pj4NCj4+Pj4+PiDC
oMKgwqDCoHByZWVtcHRfZGlzYWJsZSgpOw0KPj4+Pj4+DQo+Pj4+Pj4gwqDCoMKgwqB0YWlsID0g
KHN0cnVjdCBzcHNjX25vZGUgKiopYXRvbWljX2xvbmdfeGNoZygmcXVldWUtPnRhaWwsIChsb25n
KSZub2RlLT5uZXh0KTsNCj4+Pj4+PiDCoMKgwqDCoFdSSVRFX09OQ0UoKnRhaWwsIG5vZGUpOw0K
Pj4+Pj4+IMKgwqDCoMKgYXRvbWljX2luYygmcXVldWUtPmpvYl9jb3VudCk7DQo+Pj4+Pj4NCj4+
Pj4+PiDCoMKgwqDCoC8qDQo+Pj4+Pj4gwqDCoMKgwqAgKiBJbiBjYXNlIG9mIGZpcnN0IGVsZW1l
bnQgdmVyaWZ5IG5ldyBub2RlIHdpbGwgYmUgdmlzaWJsZSB0byB0aGUgY29uc3VtZXINCj4+Pj4+
PiDCoMKgwqDCoCAqIHRocmVhZCB3aGVuIHdlIHBpbmcgdGhlIGtlcm5lbCB0aHJlYWQgdGhhdCB0
aGVyZSBpcyBuZXcgd29yayB0byBkby4NCj4+Pj4+PiDCoMKgwqDCoCAqLw0KPj4+Pj4+IMKgwqDC
oMKgc21wX3dtYigpOw0KPj4+Pj4+DQo+Pj4+Pj4gwqDCoMKgwqBwcmVlbXB0X2VuYWJsZSgpOw0K
Pj4+Pj4+DQo+Pj4+Pj4gwqDCoMKgwqByZXR1cm4gdGFpbCA9PSAmcXVldWUtPmhlYWQ7DQo+Pj4+
Pj4gfQ0KPj4+Pj4+DQo+Pj4+Pj4gQWNjb3JkaW5nIHRvIHRoZSBtYW51YWwsIHByZWVtcHRfZGlz
YWJsZSgpIG9ubHkgZ3VhcmFudGVlZCBleGNsdXNpb24gb24gYSBzaW5nbGUgQ1BVL2NvcmUvdGhy
ZWFkLCBzbw0KPj4+Pj4+IHdlIG1pZ2h0IGJlIHBsYWd1ZWQgd2l0aCB0aGUgc2xvdywgb2xkIGZh
c2hpb25lZCBsb2NraW5nIHVubGVzcyBhbnlvbmUgaGFkIGEgYmV0dGVyIGlkZWEuDQo+Pj4+Pj4N
Cj4+Pj4+PiBCZXN0IHJlZ2FyZHMsDQo+Pj4+Pj4gTWlyc2FkIFRvZG9yb3ZhYw0KPj4NCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6325179A931
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 16:57:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5EC493F346
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 14:57:21 +0000 (UTC)
Received: from domac.alu.hr (domac.alu.unizg.hr [161.53.235.3])
	by lists.linaro.org (Postfix) with ESMTPS id 4A9AD3EE23
	for <linaro-mm-sig@lists.linaro.org>; Fri, 18 Aug 2023 13:44:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=alu.unizg.hr header.s=mail header.b=RYiV6fJd;
	dkim=pass header.d=alu.unizg.hr header.s=mail header.b=ypkhfbw8;
	spf=pass (lists.linaro.org: domain of mirsad.todorovac@alu.unizg.hr designates 161.53.235.3 as permitted sender) smtp.mailfrom=mirsad.todorovac@alu.unizg.hr;
	dmarc=pass (policy=none) header.from=alu.unizg.hr
Received: from localhost (localhost [127.0.0.1])
	by domac.alu.hr (Postfix) with ESMTP id BC11A60174;
	Fri, 18 Aug 2023 15:44:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=alu.unizg.hr; s=mail;
	t=1692366248; bh=xSfY2UzYI4RssfZmtKiJXJxurnZ4X525t6hOGi9oMWc=;
	h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
	b=RYiV6fJdzmf+zsHGDecdSeWPpy+92DoXhE290ODsf4wK0c0UaTakO5cFdv1M85Vkn
	 S6t4YBiwk8fyPxq+LSnYPNXKxPVeh3IEXoRO9XbWgLYhemMZKp7awSEPPC5TssMEmi
	 KSFSDbvasc1x9e3fy3Nkds5nvb4eAwHeNXQSmi4PvM1vuRtDtUQEeofkSbEaurxVEh
	 MhP07CuhU1r4DDgw4F6hnpCXvqGYVRvKQCLJh1DXrnhhq9MCobiEIU1E7UKbq+Myye
	 X5GktbKqtVxL5pjpxK9RaQgN2/niOjSaGvkU8e57xS+J8yVSi/Ey5r0hyxyW7IWYBM
	 z51WGvoCbhZGg==
X-Virus-Scanned: Debian amavisd-new at domac.alu.hr
Received: from domac.alu.hr ([127.0.0.1])
	by localhost (domac.alu.hr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 89ZjR8dfquSh; Fri, 18 Aug 2023 15:44:05 +0200 (CEST)
Received: from [192.168.1.6] (unknown [94.250.191.183])
	by domac.alu.hr (Postfix) with ESMTPSA id 3B16A6015E;
	Fri, 18 Aug 2023 15:44:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=alu.unizg.hr; s=mail;
	t=1692366245; bh=xSfY2UzYI4RssfZmtKiJXJxurnZ4X525t6hOGi9oMWc=;
	h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
	b=ypkhfbw8MvudjNwAvMqAgxUgG6GhboaJ9j2Mfh3+VtT2x3kZxzrJPkjmjCXDn3zTL
	 OtZUI3CKxb0wVxnT1IDzTolP7ObX2HmcyvAPEGQ1Wsh+FBk3XalzAriqo+dD5+IWaF
	 arh0q4ilpwddr1VwE/1g4uIa1Rq5PVX/oab3XiHXUS559jLMkVvEu99rzS1QbDKUGw
	 szsapq917z/R9cxfZOM9zegci6yW+ISFjR92DRve5XPNzijuX0HB0aG0nXa1012paI
	 Co8HA5oOnVJoFFRUttkwfMPG7Nm/TM52CYlQxBdFTVVAepvvImdUe3h0+GNyXzjJBk
	 h0S1UzFQgnepg==
Message-ID: <36b4e667-c287-1614-fe1f-5e772850d1fb@alu.unizg.hr>
Date: Fri, 18 Aug 2023 15:44:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Content-Language: en-US
From: Mirsad Todorovac <mirsad.todorovac@alu.unizg.hr>
To: linux-kernel@vger.kernel.org
References: <43668e49-c2c0-9979-9de3-b4904c2a8f82@alu.unizg.hr>
In-Reply-To: <43668e49-c2c0-9979-9de3-b4904c2a8f82@alu.unizg.hr>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4A9AD3EE23
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[161.53.235.3:from,94.250.191.183:received];
	DMARC_POLICY_ALLOW(-0.50)[alu.unizg.hr,none];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[alu.unizg.hr:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[amd.com,gmail.com,ffwll.ch,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	ASN(0.00)[asn:2108, ipnet:161.53.0.0/16, country:HR];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[alu.unizg.hr:+];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-MailFrom: mirsad.todorovac@alu.unizg.hr
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZUMC3D6JPVM5AMBCU5FR6LP3OJE2P27Q
X-Message-ID-Hash: ZUMC3D6JPVM5AMBCU5FR6LP3OJE2P27Q
X-Mailman-Approved-At: Mon, 11 Sep 2023 14:57:08 +0000
CC: Luben Tuikov <luben.tuikov@amd.com>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [BUG] KCSAN: data-race in drm_sched_entity_is_ready [gpu_sched] / drm_sched_entity_push_job [gpu_sched]
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZUMC3D6JPVM5AMBCU5FR6LP3OJE2P27Q/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gOC8xNy8yMyAyMTo1NCwgTWlyc2FkIFRvZG9yb3ZhYyB3cm90ZToNCj4gSGksDQo+IA0KPiBU
aGlzIGlzIHlvdXIgZnJpZW5kbHkgYnVnIHJlcG9ydGVyLg0KPiANCj4gVGhlIGVudmlyb25tZW50
IGlzIHZhbmlsbGEgdG9ydmFsZHMgdHJlZSBrZXJuZWwgb24gVWJ1bnR1IDIyLjA0IExUUyBhbmQg
YSBSeXplbiA3OTUwWCBib3guDQo+IA0KPiBQbGVhc2UgZmluZCBhdHRhY2hlZCB0aGUgY29tcGxl
dGUgZG1lc2cgb3V0cHV0IGZyb20gdGhlIHJpbmcgYnVmZmVyIGFuZCBsc2h3IG91dHB1dC4NCj4g
DQo+IE5PVEU6IFRoZSBrZXJuZWwgcmVwb3J0cyB0YWludGVkIGtlcm5lbCwgYnV0IHRvIG15IGtu
b3dsZWRnZSB0aGVyZSBhcmUgbm8gcHJvcHJpZXRhcnkgKEcpIG1vZHVsZXMsDQo+ICDCoMKgwqDC
oMKgIGJ1dCB0aGlzIHRhaW50IGlzIHR1cm5lZCBvbiBieSB0aGUgcHJldmlvdXMgYnVncy4NCj4g
DQo+IGRtZXNnIGV4Y2VycHQ6DQo+IA0KPiBbIDg3OTEuODY0NTc2XSA9PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0NCj4gWyA4
NzkxLjg2NDY0OF0gQlVHOiBLQ1NBTjogZGF0YS1yYWNlIGluIGRybV9zY2hlZF9lbnRpdHlfaXNf
cmVhZHkgW2dwdV9zY2hlZF0gLyBkcm1fc2NoZWRfZW50aXR5X3B1c2hfam9iIFtncHVfc2NoZWRd
DQo+IA0KPiBbIDg3OTEuODY0Nzc2XSB3cml0ZSAobWFya2VkKSB0byAweGZmZmY5Yjc0NDkxYjdj
NDAgb2YgOCBieXRlcyBieSB0YXNrIDM4MDcgb24gY3B1IDE4Og0KPiBbIDg3OTEuODY0Nzg4XcKg
IGRybV9zY2hlZF9lbnRpdHlfcHVzaF9qb2IrMHhmNC8weDJhMCBbZ3B1X3NjaGVkXQ0KPiBbIDg3
OTEuODY0ODUyXcKgIGFtZGdwdV9jc19pb2N0bCsweDM4ODgvMHgzZGUwIFthbWRncHVdDQo+IFsg
ODc5MS44Njg3MzFdwqAgZHJtX2lvY3RsX2tlcm5lbCsweDEyNy8weDIxMCBbZHJtXQ0KPiBbIDg3
OTEuODY5MjIyXcKgIGRybV9pb2N0bCsweDM4Zi8weDZmMCBbZHJtXQ0KPiBbIDg3OTEuODY5NzEx
XcKgIGFtZGdwdV9kcm1faW9jdGwrMHg3ZS8weGUwIFthbWRncHVdDQo+IFsgODc5MS44NzM2NjBd
wqAgX194NjRfc3lzX2lvY3RsKzB4ZDIvMHgxMjANCj4gWyA4NzkxLjg3MzY3Nl3CoCBkb19zeXNj
YWxsXzY0KzB4NTgvMHg5MA0KPiBbIDg3OTEuODczNjg4XcKgIGVudHJ5X1NZU0NBTExfNjRfYWZ0
ZXJfaHdmcmFtZSsweDczLzB4ZGQNCj4gDQo+IFsgODc5MS44NzM3MTBdIHJlYWQgdG8gMHhmZmZm
OWI3NDQ5MWI3YzQwIG9mIDggYnl0ZXMgYnkgdGFzayAxMTE5IG9uIGNwdSAyNzoNCj4gWyA4Nzkx
Ljg3MzcyMl3CoCBkcm1fc2NoZWRfZW50aXR5X2lzX3JlYWR5KzB4MTYvMHg1MCBbZ3B1X3NjaGVk
XQ0KPiBbIDg3OTEuODczNzg2XcKgIGRybV9zY2hlZF9zZWxlY3RfZW50aXR5KzB4MWM3LzB4MjIw
IFtncHVfc2NoZWRdDQo+IFsgODc5MS44NzM4NDldwqAgZHJtX3NjaGVkX21haW4rMHhkMi8weDUw
MCBbZ3B1X3NjaGVkXQ0KPiBbIDg3OTEuODczOTEyXcKgIGt0aHJlYWQrMHgxOGIvMHgxZDANCj4g
WyA4NzkxLjg3MzkyNF3CoCByZXRfZnJvbV9mb3JrKzB4NDMvMHg3MA0KPiBbIDg3OTEuODczOTM5
XcKgIHJldF9mcm9tX2ZvcmtfYXNtKzB4MWIvMHgzMA0KPiANCj4gWyA4NzkxLjg3Mzk1NV0gdmFs
dWUgY2hhbmdlZDogMHgwMDAwMDAwMDAwMDAwMDAwIC0+IDB4ZmZmZjliNzUwZWJjZmMwMA0KPiAN
Cj4gWyA4NzkxLjg3Mzk3MV0gUmVwb3J0ZWQgYnkgS2VybmVsIENvbmN1cnJlbmN5IFNhbml0aXpl
ciBvbjoNCj4gWyA4NzkxLjg3Mzk4MF0gQ1BVOiAyNyBQSUQ6IDExMTkgQ29tbTogZ2Z4XzAuMC4w
IFRhaW50ZWQ6IEfCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgTMKgwqDCoMKgIDYuNS4wLXJjNi1u
ZXQtY2ZnLWtjc2FuLTAwMDM4LWcxNjkzMTg1OWE2NTAgIzM1DQo+IFsgODc5MS44NzM5OTRdIEhh
cmR3YXJlIG5hbWU6IEFTUm9jayBYNjcwRSBQRyBMaWdodG5pbmcvWDY3MEUgUEcgTGlnaHRuaW5n
LCBCSU9TIDEuMjEgMDQvMjYvMjAyMw0KPiBbIDg3OTEuODc0MDAyXSA9PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0NCg0KUC5T
Lg0KDQpBY2NvcmRpbmcgdG8gTXIuIEhlbydzIGluc3RydWN0aW9ucywgSSBhbSBhZGRpbmcgdGhl
IHVud291bmQgdHJhY2UgaGVyZToNCg0KWyAxODc5LjcwNjUxOF0gPT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09DQpbIDE4Nzku
NzA2NjE2XSBCVUc6IEtDU0FOOiBkYXRhLXJhY2UgaW4gZHJtX3NjaGVkX2VudGl0eV9pc19yZWFk
eSBbZ3B1X3NjaGVkXSAvIGRybV9zY2hlZF9lbnRpdHlfcHVzaF9qb2IgW2dwdV9zY2hlZF0NCg0K
WyAxODc5LjcwNjczN10gd3JpdGUgKG1hcmtlZCkgdG8gMHhmZmZmOGYzNjcyNzQ4YzQwIG9mIDgg
Ynl0ZXMgYnkgdGFzayA0MDg3IG9uIGNwdSAxMDoNClsgMTg3OS43MDY3NDhdIGRybV9zY2hlZF9l
bnRpdHlfcHVzaF9qb2IgKC4vaW5jbHVkZS9kcm0vc3BzY19xdWV1ZS5oOjc0IGRyaXZlcnMvZ3B1
L2RybS9zY2hlZHVsZXIvc2NoZWRfZW50aXR5LmM6NTc0KSBncHVfc2NoZWQNClsgMTg3OS43MDY4
MDhdIGFtZGdwdV9jc19pb2N0bCAoZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2Nz
LmM6MTM3NSBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfY3MuYzoxNDY5KSBhbWRn
cHUNClsgMTg3OS43MTA1ODldIGRybV9pb2N0bF9rZXJuZWwgKGRyaXZlcnMvZ3B1L2RybS9kcm1f
aW9jdGwuYzo3ODgpIGRybQ0KWyAxODc5LjcxMTA2OF0gZHJtX2lvY3RsIChkcml2ZXJzL2dwdS9k
cm0vZHJtX2lvY3RsLmM6ODkyKSBkcm0NClsgMTg3OS43MTE1NTFdIGFtZGdwdV9kcm1faW9jdGwg
KGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kcnYuYzoyNzQ4KSBhbWRncHUNClsg
MTg3OS43MTUzMTldIF9feDY0X3N5c19pb2N0bCAoZnMvaW9jdGwuYzo1MSBmcy9pb2N0bC5jOjg3
MCBmcy9pb2N0bC5jOjg1NiBmcy9pb2N0bC5jOjg1NikNClsgMTg3OS43MTUzMzRdIGRvX3N5c2Nh
bGxfNjQgKGFyY2gveDg2L2VudHJ5L2NvbW1vbi5jOjUwIGFyY2gveDg2L2VudHJ5L2NvbW1vbi5j
OjgwKQ0KWyAxODc5LjcxNTM0NV0gZW50cnlfU1lTQ0FMTF82NF9hZnRlcl9od2ZyYW1lIChhcmNo
L3g4Ni9lbnRyeS9lbnRyeV82NC5TOjEyMCkNCg0KWyAxODc5LjcxNTM2NV0gcmVhZCB0byAweGZm
ZmY4ZjM2NzI3NDhjNDAgb2YgOCBieXRlcyBieSB0YXNrIDEwOTggb24gY3B1IDExOg0KWyAxODc5
LjcxNTM3Nl0gZHJtX3NjaGVkX2VudGl0eV9pc19yZWFkeSAoZHJpdmVycy9ncHUvZHJtL3NjaGVk
dWxlci9zY2hlZF9lbnRpdHkuYzoxMzQpIGdwdV9zY2hlZA0KWyAxODc5LjcxNTQzNV0gZHJtX3Nj
aGVkX3NlbGVjdF9lbnRpdHkgKGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5j
OjI0OCBkcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYzo4OTMpIGdwdV9zY2hl
ZA0KWyAxODc5LjcxNTQ5NV0gZHJtX3NjaGVkX21haW4gKGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVs
ZXIvc2NoZWRfbWFpbi5jOjEwMTkpIGdwdV9zY2hlZA0KWyAxODc5LjcxNTU1NF0ga3RocmVhZCAo
a2VybmVsL2t0aHJlYWQuYzozODkpDQpbIDE4NzkuNzE1NTYzXSByZXRfZnJvbV9mb3JrIChhcmNo
L3g4Ni9rZXJuZWwvcHJvY2Vzcy5jOjE0NSkNClsgMTg3OS43MTU1NzVdIHJldF9mcm9tX2Zvcmtf
YXNtIChhcmNoL3g4Ni9lbnRyeS9lbnRyeV82NC5TOjMxMikNCg0KWyAxODc5LjcxNTU5MF0gdmFs
dWUgY2hhbmdlZDogMHgwMDAwMDAwMDAwMDAwMDAwIC0+IDB4ZmZmZjhmMzYwNjYzZGMwMA0KDQpb
IDE4NzkuNzE1NjA0XSBSZXBvcnRlZCBieSBLZXJuZWwgQ29uY3VycmVuY3kgU2FuaXRpemVyIG9u
Og0KWyAxODc5LjcxNTYxMl0gQ1BVOiAxMSBQSUQ6IDEwOTggQ29tbTogZ2Z4XzAuMC4wIFRhaW50
ZWQ6IEcgICAgICAgICAgICAgTCAgICAgNi41LjAtcmM2KyAjNDcNClsgMTg3OS43MTU2MjRdIEhh
cmR3YXJlIG5hbWU6IEFTUm9jayBYNjcwRSBQRyBMaWdodG5pbmcvWDY3MEUgUEcgTGlnaHRuaW5n
LCBCSU9TIDEuMjEgMDQvMjYvMjAyMw0KWyAxODc5LjcxNTYzMV0gPT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09DQoNCkl0IHNl
ZW1zIHRoYXQgdGhlIGxpbmUgaW4gcXVlc3Rpb24gbWlnaHQgYmU6DQoNCglmaXJzdCA9IHNwc2Nf
cXVldWVfcHVzaCgmZW50aXR5LT5qb2JfcXVldWUsICZzY2hlZF9qb2ItPnF1ZXVlX25vZGUpOw0K
DQp3aGljaCBleHBhbmRzIHRvOg0KDQpzdGF0aWMgaW5saW5lIGJvb2wgc3BzY19xdWV1ZV9wdXNo
KHN0cnVjdCBzcHNjX3F1ZXVlICpxdWV1ZSwgc3RydWN0IHNwc2Nfbm9kZSAqbm9kZSkNCnsNCglz
dHJ1Y3Qgc3BzY19ub2RlICoqdGFpbDsNCg0KCW5vZGUtPm5leHQgPSBOVUxMOw0KDQoJcHJlZW1w
dF9kaXNhYmxlKCk7DQoNCgl0YWlsID0gKHN0cnVjdCBzcHNjX25vZGUgKiopYXRvbWljX2xvbmdf
eGNoZygmcXVldWUtPnRhaWwsIChsb25nKSZub2RlLT5uZXh0KTsNCglXUklURV9PTkNFKCp0YWls
LCBub2RlKTsNCglhdG9taWNfaW5jKCZxdWV1ZS0+am9iX2NvdW50KTsNCg0KCS8qDQoJICogSW4g
Y2FzZSBvZiBmaXJzdCBlbGVtZW50IHZlcmlmeSBuZXcgbm9kZSB3aWxsIGJlIHZpc2libGUgdG8g
dGhlIGNvbnN1bWVyDQoJICogdGhyZWFkIHdoZW4gd2UgcGluZyB0aGUga2VybmVsIHRocmVhZCB0
aGF0IHRoZXJlIGlzIG5ldyB3b3JrIHRvIGRvLg0KCSAqLw0KCXNtcF93bWIoKTsNCg0KCXByZWVt
cHRfZW5hYmxlKCk7DQoNCglyZXR1cm4gdGFpbCA9PSAmcXVldWUtPmhlYWQ7DQp9DQoNCkFjY29y
ZGluZyB0byB0aGUgbWFudWFsLCBwcmVlbXB0X2Rpc2FibGUoKSBvbmx5IGd1YXJhbnRlZWQgZXhj
bHVzaW9uIG9uIGEgc2luZ2xlIENQVS9jb3JlL3RocmVhZCwgc28NCndlIG1pZ2h0IGJlIHBsYWd1
ZWQgd2l0aCB0aGUgc2xvdywgb2xkIGZhc2hpb25lZCBsb2NraW5nIHVubGVzcyBhbnlvbmUgaGFk
IGEgYmV0dGVyIGlkZWEuDQoNCkJlc3QgcmVnYXJkcywNCk1pcnNhZCBUb2Rvcm92YWMNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=

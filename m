Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BD8FC79A938
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 16:57:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B9A3C3EF33
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 14:57:41 +0000 (UTC)
Received: from domac.alu.hr (domac.alu.unizg.hr [161.53.235.3])
	by lists.linaro.org (Postfix) with ESMTPS id 2951B3EBC3
	for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Aug 2023 14:28:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=alu.unizg.hr header.s=mail header.b=W0eyZ9Z8;
	dkim=pass header.d=alu.unizg.hr header.s=mail header.b=uWjPLX7S;
	spf=pass (lists.linaro.org: domain of mirsad.todorovac@alu.unizg.hr designates 161.53.235.3 as permitted sender) smtp.mailfrom=mirsad.todorovac@alu.unizg.hr;
	dmarc=pass (policy=none) header.from=alu.unizg.hr
Received: from localhost (localhost [127.0.0.1])
	by domac.alu.hr (Postfix) with ESMTP id 6A9BC60171;
	Mon, 21 Aug 2023 16:28:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=alu.unizg.hr; s=mail;
	t=1692628120; bh=0nRTqe/pCPlhMFJPMwlnr1DydCqbb1rQ2tL2k/ZoNno=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=W0eyZ9Z8XgJPDJ34ilzkrZ8wy1dw/4BqI/uiQ3s9ZJYqSLvHlJUI0hnd0oKg4HjEE
	 NFtdXYycuP63phOoJn8vtS3Bz9qdRisSKr+QK9ENx4ZoITpU5p5mIxmXc8BvR/J1KD
	 S+XKxMwnSQCa2Od5n3xGQeuUTSGSfpNypkia8/Dv5ai3qaQ9EFU6FXcSbA9Pqe0Z25
	 +HYAyIfekSsxCoae6EZ2qsDK4QsGv03o4YC/uvZYBwKul078cmWxFpOcb6wCF6Ihkl
	 x7F/URwP4saeI+3aO+RcSZFrkpQI83k0Ep3Uh/+3FUIa/LTy2LxwJw7q6Hj0fWTPd9
	 p6kederUW6Xmw==
X-Virus-Scanned: Debian amavisd-new at domac.alu.hr
Received: from domac.alu.hr ([127.0.0.1])
	by localhost (domac.alu.hr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MEIT_o-HFzvE; Mon, 21 Aug 2023 16:28:37 +0200 (CEST)
Received: from [192.168.1.6] (unknown [94.250.191.183])
	by domac.alu.hr (Postfix) with ESMTPSA id 950576016E;
	Mon, 21 Aug 2023 16:28:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=alu.unizg.hr; s=mail;
	t=1692628117; bh=0nRTqe/pCPlhMFJPMwlnr1DydCqbb1rQ2tL2k/ZoNno=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=uWjPLX7SYA1adfd1RQDLSzJ7qnwURl8BTasCSyBIEAZQaeF3IJ2QcEN16VVxJeRtS
	 fwjHK/2SVwiCmFwaM4MRkxrJzPJt7rAwowglgZxb9k9DTCZnvtkURTaxxdvIa66/Q9
	 JMQBK37Z50AFZhh3a8tRpQdiOefvWUlQfXNUENjXysLElI7k3aduZBTOnwaasi1Gv2
	 Awx1RPd0/0FJTsFUtBXUaQRKVEbsRJN/IAbjotPOe52WVLgZZMxq9U1tpEpLgmk973
	 h4VZn+k8FX5KDTx6R5Ju4sncjAongFWC+tRLRkMwJfzsCkLdoVb/8rkUCPwTeGxWiH
	 eLViR7ZToypdQ==
Message-ID: <5d83d59a-3c49-aae7-61ca-de9c2f3ba9c9@alu.unizg.hr>
Date: Mon, 21 Aug 2023 16:28:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 linux-kernel@vger.kernel.org
References: <43668e49-c2c0-9979-9de3-b4904c2a8f82@alu.unizg.hr>
 <36b4e667-c287-1614-fe1f-5e772850d1fb@alu.unizg.hr>
 <b74a5cc3-8174-67f3-17ab-2e8a7d8fa1a6@amd.com>
From: Mirsad Todorovac <mirsad.todorovac@alu.unizg.hr>
In-Reply-To: <b74a5cc3-8174-67f3-17ab-2e8a7d8fa1a6@amd.com>
X-Rspamd-Queue-Id: 2951B3EBC3
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[alu.unizg.hr,none];
	R_DKIM_ALLOW(-0.20)[alu.unizg.hr:s=mail];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:2108, ipnet:161.53.0.0/16, country:HR];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,gmail.com,ffwll.ch,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[domac.alu.hr:helo,alu.unizg.hr:dkim];
	DKIM_TRACE(0.00)[alu.unizg.hr:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-MailFrom: mirsad.todorovac@alu.unizg.hr
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 57HDYSXOYHPCKICZXC7WCTKADAVLI7FN
X-Message-ID-Hash: 57HDYSXOYHPCKICZXC7WCTKADAVLI7FN
X-Mailman-Approved-At: Mon, 11 Sep 2023 14:57:17 +0000
CC: Luben Tuikov <luben.tuikov@amd.com>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [BUG] KCSAN: data-race in drm_sched_entity_is_ready [gpu_sched] / drm_sched_entity_push_job [gpu_sched]
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/57HDYSXOYHPCKICZXC7WCTKADAVLI7FN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgQ2hyaXN0aWFuLA0KDQpUaGFuayB5b3UgZm9yIHRoZSB1cGRhdGUuDQoNClNob3VsZCBJIGNv
bnRpbnVlIHJlcG9ydGluZyB3aGF0IEtDU0FOIGdpdmVzPyBJIHdpbGwgdHJ5IHRvIGZpbHRlciB0
aGVzZSB0byBzYXZlIHlvdXIgdGltZSBmb3INCmV2YWx1YXRpb24gLi4uDQoNCktpbmQgcmVnYXJk
cywNCk1pcnNhZA0KDQpPbiA4LzIxLzIzIDE1OjIwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0K
PiBIaSBNaXJzYWQsDQo+IA0KPiB3ZWxsIHRoaXMgaXMgYSBmYWxzZSBwb3NpdGl2ZS4NCj4gDQo+
IFRoYXQgZHJtX3NjaGVkX2VudGl0eV9pc19yZWFkeSgpIGRvZXNuJ3Qgc2VlIHRoZSBkYXRhIHdy
aXR0ZW4gYnkgZHJtX3NjaGVkX2VudGl0eV9wdXNoX2pvYigpIGlzIHBhcnQgb2YgdGhlIGxvZ2lj
IGhlcmUuDQo+IA0KPiBSZWdhcmRzLA0KPiBDaHJpc3RpYW4uDQo+IA0KPiBBbSAxOC4wOC4yMyB1
bSAxNTo0NCBzY2hyaWViIE1pcnNhZCBUb2Rvcm92YWM6DQo+PiBPbiA4LzE3LzIzIDIxOjU0LCBN
aXJzYWQgVG9kb3JvdmFjIHdyb3RlOg0KPj4+IEhpLA0KPj4+DQo+Pj4gVGhpcyBpcyB5b3VyIGZy
aWVuZGx5IGJ1ZyByZXBvcnRlci4NCj4+Pg0KPj4+IFRoZSBlbnZpcm9ubWVudCBpcyB2YW5pbGxh
IHRvcnZhbGRzIHRyZWUga2VybmVsIG9uIFVidW50dSAyMi4wNCBMVFMgYW5kIGEgUnl6ZW4gNzk1
MFggYm94Lg0KPj4+DQo+Pj4gUGxlYXNlIGZpbmQgYXR0YWNoZWQgdGhlIGNvbXBsZXRlIGRtZXNn
IG91dHB1dCBmcm9tIHRoZSByaW5nIGJ1ZmZlciBhbmQgbHNodyBvdXRwdXQuDQo+Pj4NCj4+PiBO
T1RFOiBUaGUga2VybmVsIHJlcG9ydHMgdGFpbnRlZCBrZXJuZWwsIGJ1dCB0byBteSBrbm93bGVk
Z2UgdGhlcmUgYXJlIG5vIHByb3ByaWV0YXJ5IChHKSBtb2R1bGVzLA0KPj4+IMKgwqDCoMKgwqDC
oCBidXQgdGhpcyB0YWludCBpcyB0dXJuZWQgb24gYnkgdGhlIHByZXZpb3VzIGJ1Z3MuDQo+Pj4N
Cj4+PiBkbWVzZyBleGNlcnB0Og0KPj4+DQo+Pj4gWyA4NzkxLjg2NDU3Nl0gPT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09DQo+
Pj4gWyA4NzkxLjg2NDY0OF0gQlVHOiBLQ1NBTjogZGF0YS1yYWNlIGluIGRybV9zY2hlZF9lbnRp
dHlfaXNfcmVhZHkgW2dwdV9zY2hlZF0gLyBkcm1fc2NoZWRfZW50aXR5X3B1c2hfam9iIFtncHVf
c2NoZWRdDQo+Pj4NCj4+PiBbIDg3OTEuODY0Nzc2XSB3cml0ZSAobWFya2VkKSB0byAweGZmZmY5
Yjc0NDkxYjdjNDAgb2YgOCBieXRlcyBieSB0YXNrIDM4MDcgb24gY3B1IDE4Og0KPj4+IFsgODc5
MS44NjQ3ODhdwqAgZHJtX3NjaGVkX2VudGl0eV9wdXNoX2pvYisweGY0LzB4MmEwIFtncHVfc2No
ZWRdDQo+Pj4gWyA4NzkxLjg2NDg1Ml3CoCBhbWRncHVfY3NfaW9jdGwrMHgzODg4LzB4M2RlMCBb
YW1kZ3B1XQ0KPj4+IFsgODc5MS44Njg3MzFdwqAgZHJtX2lvY3RsX2tlcm5lbCsweDEyNy8weDIx
MCBbZHJtXQ0KPj4+IFsgODc5MS44NjkyMjJdwqAgZHJtX2lvY3RsKzB4MzhmLzB4NmYwIFtkcm1d
DQo+Pj4gWyA4NzkxLjg2OTcxMV3CoCBhbWRncHVfZHJtX2lvY3RsKzB4N2UvMHhlMCBbYW1kZ3B1
XQ0KPj4+IFsgODc5MS44NzM2NjBdwqAgX194NjRfc3lzX2lvY3RsKzB4ZDIvMHgxMjANCj4+PiBb
IDg3OTEuODczNjc2XcKgIGRvX3N5c2NhbGxfNjQrMHg1OC8weDkwDQo+Pj4gWyA4NzkxLjg3MzY4
OF3CoCBlbnRyeV9TWVNDQUxMXzY0X2FmdGVyX2h3ZnJhbWUrMHg3My8weGRkDQo+Pj4NCj4+PiBb
IDg3OTEuODczNzEwXSByZWFkIHRvIDB4ZmZmZjliNzQ0OTFiN2M0MCBvZiA4IGJ5dGVzIGJ5IHRh
c2sgMTExOSBvbiBjcHUgMjc6DQo+Pj4gWyA4NzkxLjg3MzcyMl3CoCBkcm1fc2NoZWRfZW50aXR5
X2lzX3JlYWR5KzB4MTYvMHg1MCBbZ3B1X3NjaGVkXQ0KPj4+IFsgODc5MS44NzM3ODZdwqAgZHJt
X3NjaGVkX3NlbGVjdF9lbnRpdHkrMHgxYzcvMHgyMjAgW2dwdV9zY2hlZF0NCj4+PiBbIDg3OTEu
ODczODQ5XcKgIGRybV9zY2hlZF9tYWluKzB4ZDIvMHg1MDAgW2dwdV9zY2hlZF0NCj4+PiBbIDg3
OTEuODczOTEyXcKgIGt0aHJlYWQrMHgxOGIvMHgxZDANCj4+PiBbIDg3OTEuODczOTI0XcKgIHJl
dF9mcm9tX2ZvcmsrMHg0My8weDcwDQo+Pj4gWyA4NzkxLjg3MzkzOV3CoCByZXRfZnJvbV9mb3Jr
X2FzbSsweDFiLzB4MzANCj4+Pg0KPj4+IFsgODc5MS44NzM5NTVdIHZhbHVlIGNoYW5nZWQ6IDB4
MDAwMDAwMDAwMDAwMDAwMCAtPiAweGZmZmY5Yjc1MGViY2ZjMDANCj4+Pg0KPj4+IFsgODc5MS44
NzM5NzFdIFJlcG9ydGVkIGJ5IEtlcm5lbCBDb25jdXJyZW5jeSBTYW5pdGl6ZXIgb246DQo+Pj4g
WyA4NzkxLjg3Mzk4MF0gQ1BVOiAyNyBQSUQ6IDExMTkgQ29tbTogZ2Z4XzAuMC4wIFRhaW50ZWQ6
IEfCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgTMKgwqDCoMKgIDYuNS4wLXJjNi1uZXQtY2ZnLWtj
c2FuLTAwMDM4LWcxNjkzMTg1OWE2NTAgIzM1DQo+Pj4gWyA4NzkxLjg3Mzk5NF0gSGFyZHdhcmUg
bmFtZTogQVNSb2NrIFg2NzBFIFBHIExpZ2h0bmluZy9YNjcwRSBQRyBMaWdodG5pbmcsIEJJT1Mg
MS4yMSAwNC8yNi8yMDIzDQo+Pj4gWyA4NzkxLjg3NDAwMl0gPT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09DQo+Pg0KPj4gUC5T
Lg0KPj4NCj4+IEFjY29yZGluZyB0byBNci4gSGVvJ3MgaW5zdHJ1Y3Rpb25zLCBJIGFtIGFkZGlu
ZyB0aGUgdW53b3VuZCB0cmFjZSBoZXJlOg0KPj4NCj4+IFsgMTg3OS43MDY1MThdID09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PQ0KPj4gWyAxODc5LjcwNjYxNl0gQlVHOiBLQ1NBTjogZGF0YS1yYWNlIGluIGRybV9zY2hlZF9l
bnRpdHlfaXNfcmVhZHkgW2dwdV9zY2hlZF0gLyBkcm1fc2NoZWRfZW50aXR5X3B1c2hfam9iIFtn
cHVfc2NoZWRdDQo+Pg0KPj4gWyAxODc5LjcwNjczN10gd3JpdGUgKG1hcmtlZCkgdG8gMHhmZmZm
OGYzNjcyNzQ4YzQwIG9mIDggYnl0ZXMgYnkgdGFzayA0MDg3IG9uIGNwdSAxMDoNCj4+IFsgMTg3
OS43MDY3NDhdIGRybV9zY2hlZF9lbnRpdHlfcHVzaF9qb2IgKC4vaW5jbHVkZS9kcm0vc3BzY19x
dWV1ZS5oOjc0IGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZW50aXR5LmM6NTc0KSBn
cHVfc2NoZWQNCj4+IFsgMTg3OS43MDY4MDhdIGFtZGdwdV9jc19pb2N0bCAoZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2NzLmM6MTM3NSBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdw
dS9hbWRncHVfY3MuYzoxNDY5KSBhbWRncHUNCj4+IFsgMTg3OS43MTA1ODldIGRybV9pb2N0bF9r
ZXJuZWwgKGRyaXZlcnMvZ3B1L2RybS9kcm1faW9jdGwuYzo3ODgpIGRybQ0KPj4gWyAxODc5Ljcx
MTA2OF0gZHJtX2lvY3RsIChkcml2ZXJzL2dwdS9kcm0vZHJtX2lvY3RsLmM6ODkyKSBkcm0NCj4+
IFsgMTg3OS43MTE1NTFdIGFtZGdwdV9kcm1faW9jdGwgKGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2FtZGdwdV9kcnYuYzoyNzQ4KSBhbWRncHUNCj4+IFsgMTg3OS43MTUzMTldIF9feDY0X3N5
c19pb2N0bCAoZnMvaW9jdGwuYzo1MSBmcy9pb2N0bC5jOjg3MCBmcy9pb2N0bC5jOjg1NiBmcy9p
b2N0bC5jOjg1NikNCj4+IFsgMTg3OS43MTUzMzRdIGRvX3N5c2NhbGxfNjQgKGFyY2gveDg2L2Vu
dHJ5L2NvbW1vbi5jOjUwIGFyY2gveDg2L2VudHJ5L2NvbW1vbi5jOjgwKQ0KPj4gWyAxODc5Ljcx
NTM0NV0gZW50cnlfU1lTQ0FMTF82NF9hZnRlcl9od2ZyYW1lIChhcmNoL3g4Ni9lbnRyeS9lbnRy
eV82NC5TOjEyMCkNCj4+DQo+PiBbIDE4NzkuNzE1MzY1XSByZWFkIHRvIDB4ZmZmZjhmMzY3Mjc0
OGM0MCBvZiA4IGJ5dGVzIGJ5IHRhc2sgMTA5OCBvbiBjcHUgMTE6DQo+PiBbIDE4NzkuNzE1Mzc2
XSBkcm1fc2NoZWRfZW50aXR5X2lzX3JlYWR5IChkcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3Nj
aGVkX2VudGl0eS5jOjEzNCkgZ3B1X3NjaGVkDQo+PiBbIDE4NzkuNzE1NDM1XSBkcm1fc2NoZWRf
c2VsZWN0X2VudGl0eSAoZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmM6MjQ4
IGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jOjg5MykgZ3B1X3NjaGVkDQo+
PiBbIDE4NzkuNzE1NDk1XSBkcm1fc2NoZWRfbWFpbiAoZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxl
ci9zY2hlZF9tYWluLmM6MTAxOSkgZ3B1X3NjaGVkDQo+PiBbIDE4NzkuNzE1NTU0XSBrdGhyZWFk
IChrZXJuZWwva3RocmVhZC5jOjM4OSkNCj4+IFsgMTg3OS43MTU1NjNdIHJldF9mcm9tX2Zvcmsg
KGFyY2gveDg2L2tlcm5lbC9wcm9jZXNzLmM6MTQ1KQ0KPj4gWyAxODc5LjcxNTU3NV0gcmV0X2Zy
b21fZm9ya19hc20gKGFyY2gveDg2L2VudHJ5L2VudHJ5XzY0LlM6MzEyKQ0KPj4NCj4+IFsgMTg3
OS43MTU1OTBdIHZhbHVlIGNoYW5nZWQ6IDB4MDAwMDAwMDAwMDAwMDAwMCAtPiAweGZmZmY4ZjM2
MDY2M2RjMDANCj4+DQo+PiBbIDE4NzkuNzE1NjA0XSBSZXBvcnRlZCBieSBLZXJuZWwgQ29uY3Vy
cmVuY3kgU2FuaXRpemVyIG9uOg0KPj4gWyAxODc5LjcxNTYxMl0gQ1BVOiAxMSBQSUQ6IDEwOTgg
Q29tbTogZ2Z4XzAuMC4wIFRhaW50ZWQ6IEfCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgTMKgwqDC
oMKgIDYuNS4wLXJjNisgIzQ3DQo+PiBbIDE4NzkuNzE1NjI0XSBIYXJkd2FyZSBuYW1lOiBBU1Jv
Y2sgWDY3MEUgUEcgTGlnaHRuaW5nL1g2NzBFIFBHIExpZ2h0bmluZywgQklPUyAxLjIxIDA0LzI2
LzIwMjMNCj4+IFsgMTg3OS43MTU2MzFdID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQ0KPj4NCj4+IEl0IHNlZW1zIHRoYXQg
dGhlIGxpbmUgaW4gcXVlc3Rpb24gbWlnaHQgYmU6DQo+Pg0KPj4gwqDCoMKgwqBmaXJzdCA9IHNw
c2NfcXVldWVfcHVzaCgmZW50aXR5LT5qb2JfcXVldWUsICZzY2hlZF9qb2ItPnF1ZXVlX25vZGUp
Ow0KPj4NCj4+IHdoaWNoIGV4cGFuZHMgdG86DQo+Pg0KPj4gc3RhdGljIGlubGluZSBib29sIHNw
c2NfcXVldWVfcHVzaChzdHJ1Y3Qgc3BzY19xdWV1ZSAqcXVldWUsIHN0cnVjdCBzcHNjX25vZGUg
Km5vZGUpDQo+PiB7DQo+PiDCoMKgwqDCoHN0cnVjdCBzcHNjX25vZGUgKip0YWlsOw0KPj4NCj4+
IMKgwqDCoMKgbm9kZS0+bmV4dCA9IE5VTEw7DQo+Pg0KPj4gwqDCoMKgwqBwcmVlbXB0X2Rpc2Fi
bGUoKTsNCj4+DQo+PiDCoMKgwqDCoHRhaWwgPSAoc3RydWN0IHNwc2Nfbm9kZSAqKilhdG9taWNf
bG9uZ194Y2hnKCZxdWV1ZS0+dGFpbCwgKGxvbmcpJm5vZGUtPm5leHQpOw0KPj4gwqDCoMKgwqBX
UklURV9PTkNFKCp0YWlsLCBub2RlKTsNCj4+IMKgwqDCoMKgYXRvbWljX2luYygmcXVldWUtPmpv
Yl9jb3VudCk7DQo+Pg0KPj4gwqDCoMKgwqAvKg0KPj4gwqDCoMKgwqAgKiBJbiBjYXNlIG9mIGZp
cnN0IGVsZW1lbnQgdmVyaWZ5IG5ldyBub2RlIHdpbGwgYmUgdmlzaWJsZSB0byB0aGUgY29uc3Vt
ZXINCj4+IMKgwqDCoMKgICogdGhyZWFkIHdoZW4gd2UgcGluZyB0aGUga2VybmVsIHRocmVhZCB0
aGF0IHRoZXJlIGlzIG5ldyB3b3JrIHRvIGRvLg0KPj4gwqDCoMKgwqAgKi8NCj4+IMKgwqDCoMKg
c21wX3dtYigpOw0KPj4NCj4+IMKgwqDCoMKgcHJlZW1wdF9lbmFibGUoKTsNCj4+DQo+PiDCoMKg
wqDCoHJldHVybiB0YWlsID09ICZxdWV1ZS0+aGVhZDsNCj4+IH0NCj4+DQo+PiBBY2NvcmRpbmcg
dG8gdGhlIG1hbnVhbCwgcHJlZW1wdF9kaXNhYmxlKCkgb25seSBndWFyYW50ZWVkIGV4Y2x1c2lv
biBvbiBhIHNpbmdsZSBDUFUvY29yZS90aHJlYWQsIHNvDQo+PiB3ZSBtaWdodCBiZSBwbGFndWVk
IHdpdGggdGhlIHNsb3csIG9sZCBmYXNoaW9uZWQgbG9ja2luZyB1bmxlc3MgYW55b25lIGhhZCBh
IGJldHRlciBpZGVhLg0KPj4NCj4+IEJlc3QgcmVnYXJkcywNCj4+IE1pcnNhZCBUb2Rvcm92YWMN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGlu
YXJvLm9yZwo=

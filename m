Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qMqeAhn84GlloAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:11:21 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9928C410526
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:11:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B3D9C40536
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:11:19 +0000 (UTC)
Received: from out30-110.freemail.mail.aliyun.com (out30-110.freemail.mail.aliyun.com [115.124.30.110])
	by lists.linaro.org (Postfix) with ESMTPS id D66653F7E7
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 06:33:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux.alibaba.com header.s=default header.b=Akc8B5P2;
	dmarc=pass (policy=none) header.from=linux.alibaba.com;
	spf=pass (lists.linaro.org: domain of xueshuai@linux.alibaba.com designates 115.124.30.110 as permitted sender) smtp.mailfrom=xueshuai@linux.alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linux.alibaba.com; s=default;
	t=1763015586; h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type;
	bh=Nm8/08dZj5jahSzMqOZOKZcwHuLbQSEhvJSn1qCuYaw=;
	b=Akc8B5P2l+C/lBVrFed+LQPhz1CiZ50QjQpJAEvOv2T4OOR0vAFwKbT3tSTzY9wZ1wQ64E1jkOdcvNxOmBmHmUF+kWYqNnUxxXVvNPo30VbN5FGNiKlA85FmKd+t7XK+BI6cLB2cyx4hXOwh/jQGU8wYZwj9NzpnQI3BEvRh+Yk=
Received: from 30.247.129.79(mailfrom:xueshuai@linux.alibaba.com fp:SMTPD_---0WsIgOJQ_1763015582 cluster:ay36)
          by smtp.aliyun-inc.com;
          Thu, 13 Nov 2025 14:33:04 +0800
Message-ID: <29f0cddc-3c23-4ab1-92d9-8c9918ddc187@linux.alibaba.com>
Date: Thu, 13 Nov 2025 14:33:01 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Nicolin Chen <nicolinc@nvidia.com>, Jason Gunthorpe <jgg@nvidia.com>
References: <0-v1-af84a3ab44f5+f68-iommufd_buf_jgg@nvidia.com>
 <aQ4x7UiMMCB0m0dH@Asurada-Nvidia>
From: Shuai Xue <xueshuai@linux.alibaba.com>
In-Reply-To: <aQ4x7UiMMCB0m0dH@Asurada-Nvidia>
X-Spamd-Bar: -------------
X-MailFrom: xueshuai@linux.alibaba.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: HT3OO3FJJW5YTIUAVMQ44L53J3FBCUX2
X-Message-ID-Hash: HT3OO3FJJW5YTIUAVMQ44L53J3FBCUX2
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:56:34 +0000
CC: Alex Williamson <alex@shazbot.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Joerg Roedel <joro@8bytes.org>, Kevin Tian <kevin.tian@intel.com>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kselftest@vger.kernel.org, linux-media@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>, Shuah Khan <shuah@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Will Deacon <will@kernel.org>, Krishnakant Jaju <kjaju@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Matt Ochs <mochs@nvidia.com>, patches@lists.linux.dev, Simona Vetter <simona.vetter@ffwll.ch>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Xu Yilun <yilun.xu@linux.intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/9] Initial DMABUF support for iommufd
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HT3OO3FJJW5YTIUAVMQ44L53J3FBCUX2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.69 / 15.00];
	R_DKIM_REJECT(1.00)[linux.alibaba.com:s=default];
	DATE_IN_PAST(1.00)[3704];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[linux.alibaba.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linux.alibaba.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xueshuai@linux.alibaba.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.989];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,linux.alibaba.com:mid,nvidia.com:email]
X-Rspamd-Queue-Id: 9928C410526
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SGksIE5pY29saW4NCg0K5ZyoIDIwMjUvMTEvOCAwMTo1MiwgTmljb2xpbiBDaGVuIOWGmemBkzoN
Cj4gT24gRnJpLCBOb3YgMDcsIDIwMjUgYXQgMTI6NDk6MzJQTSAtMDQwMCwgSmFzb24gR3VudGhv
cnBlIHdyb3RlOg0KPj4gVGhpcyBpcyBvbiBnaXRodWI6IGh0dHBzOi8vZ2l0aHViLmNvbS9qZ3Vu
dGhvcnBlL2xpbnV4L2NvbW1pdHMvaW9tbXVmZF9kbWFidWYNCj4+DQo+PiB2MjoNCj4+ICAgLSBS
ZWJhc2Ugb24gTGVvbidzIHY3DQo+PiAgIC0gRml4IG1pc2xvY2tpbmcgaW4gYW4gaW9wdF9maWxs
X2RvbWFpbigpIGVycm9yIHBhdGgNCj4gDQo+IEkgaGF2ZSB2ZXJpZmllZCB0aGlzIHYyIHVzaW5n
IHRoZSBicmFuY2ggYWJvdmUsIGJ5IGRyYWZ0aW5nIGEgUUVNVQ0KPiBwYXRjaCBmb3IgZG1hYnVm
IG9uIHRvcCBvZiBTaGFtZWVyJ3MgdlNNTVUgdjUgc2VyaWVzOg0KPiBodHRwczovL2dpdGh1Yi5j
b20vbmljb2xpbmMvcWVtdS9jb21taXRzL3dpcC9pb21tdWZkX2RtYWJ1Zi8NCj4gDQo+IFdpdGgg
dGhhdCwgSSBzZWUgR1BVIEJBUiBtZW1vcnkgYmUgY29ycmVjdGx5IGZldGNoZWQgaW4gdGhlIFFF
TVU6DQo+IHZmaW9fcmVnaW9uX2RtYWJ1ZiBEZXZpY2UgMDAwOTowMTowMC4wLCByZWdpb24gIjAw
MDk6MDE6MDAuMCBCQVIgMCIsIG9mZnNldDogMHgwLCBzaXplOiAweDEwMDAwMDANCj4gdmZpb19y
ZWdpb25fZG1hYnVmIERldmljZSAwMDA5OjAxOjAwLjAsIHJlZ2lvbiAiMDAwOTowMTowMC4wIEJB
UiAyIiwgb2Zmc2V0OiAweDAsIHNpemU6IDB4NDRmMDAwMDANCj4gdmZpb19yZWdpb25fZG1hYnVm
IERldmljZSAwMDA5OjAxOjAwLjAsIHJlZ2lvbiAiMDAwOTowMTowMC4wIEJBUiA0Iiwgb2Zmc2V0
OiAweDAsIHNpemU6IDB4MTdhMDAwMDAwMA0KPiANCj4gVGVzdGVkLWJ5OiBOaWNvbGluIENoZW4g
PG5pY29saW5jQG52aWRpYS5jb20+DQoNCkkgdGVzdGVkIHdpdGggeW91ciBRRU1VIGJyYW5jaCBh
bmQgdGhpcyB2MiBicmFuY2gsIGFuZCBvYnNlcnZlZA0KdGhlIGZvbGxvd2luZzoNCg0KKipRRU1V
IHN1Y2Nlc3NmdWxseSBtYXBzIHRoZSBCQVIgcmVnaW9ucyB2aWEgZG1hYnVmOioqDQoNCnZmaW9f
cmVnaW9uX21tYXAgUmVnaW9uIDAwMDg6MDE6MDAuMCBCQVIgMCBtbWFwc1swXSBbMHgwIC0gMHgz
ZmZmZmZmXQ0KdmZpb19yZWdpb25fZG1hYnVmIERldmljZSAwMDA4OjAxOjAwLjAsIHJlZ2lvbiAi
MDAwODowMTowMC4wIEJBUiAwIiwgb2Zmc2V0OiAweDAsIHNpemU6IDB4NDAwMDAwMA0KdmZpb19y
ZWdpb25fbW1hcCBSZWdpb24gMDAwODowMTowMC4wIEJBUiAyIG1tYXBzWzBdIFsweDAgLSAweDNm
ZmZmZmZmZmZdDQp2ZmlvX3JlZ2lvbl9kbWFidWYgRGV2aWNlIDAwMDg6MDE6MDAuMCwgcmVnaW9u
ICIwMDA4OjAxOjAwLjAgQkFSIDIiLCBvZmZzZXQ6IDB4MCwgc2l6ZTogMHg0MDAwMDAwMDAwDQp2
ZmlvX3JlZ2lvbl9tbWFwIFJlZ2lvbiAwMDA4OjAxOjAwLjAgQkFSIDQgbW1hcHNbMF0gWzB4MCAt
IDB4MmU0MWVmZmZmZl0NCnZmaW9fcmVnaW9uX2RtYWJ1ZiBEZXZpY2UgMDAwODowMTowMC4wLCBy
ZWdpb24gIjAwMDg6MDE6MDAuMCBCQVIgNCIsIG9mZnNldDogMHgwLCBzaXplOiAweDJlNDFmMDAw
MDANCg0KKipJT01NVUZEIGJhY2tlbmQgc3VjY2Vzc2Z1bGx5IG1hcHMgdGhlIERNQSByZWdpb25z
OioqDQoNCmlvbW11ZmRfYmFja2VuZF9tYXBfZmlsZV9kbWEgIGlvbW11ZmQ9MzAzIGlvYXM9MiBp
b3ZhPTB4MzAwMDAwMDAwMDAgc2l6ZT0weGI5MDAwMCBmZD0zMDYgc3RhcnQ9MCByZWFkb25seT0w
ICgwKQ0KdmZpb19saXN0ZW5lcl9yZWdpb25fYWRkX3JhbSByZWdpb25fYWRkIFtyYW1dIDB4MzAw
MDBiOTEwMDAgLSAweDMwMDAzZmZmZmZmIFsweGZmY2FlOGI5MTAwMF0NCmlvbW11ZmRfYmFja2Vu
ZF9tYXBfZmlsZV9kbWEgIGlvbW11ZmQ9MzAzIGlvYXM9MiBpb3ZhPTB4MzAwMDBiOTEwMDAgc2l6
ZT0weDM0NmYwMDAgZmQ9MzA2IHN0YXJ0PTEyMTI4MjU2IHJlYWRvbmx5PTAgKDApDQp2ZmlvX2xp
c3RlbmVyX3JlZ2lvbl9hZGRfcmFtIHJlZ2lvbl9hZGQgW3JhbV0gMHgyYzAwMDAwMDAwMCAtIDB4
MmZmZmZmZmZmZmYgWzB4ZmY4YWMwMDAwMDAwXQ0KaW9tbXVmZF9iYWNrZW5kX21hcF9maWxlX2Rt
YSAgaW9tbXVmZD0zMDMgaW9hcz0yIGlvdmE9MHgyYzAwMDAwMDAwMCBzaXplPTB4NDAwMDAwMDAw
MCBmZD0zMDcgc3RhcnQ9MCByZWFkb25seT0wICgwKQ0KdmZpb19saXN0ZW5lcl9yZWdpb25fYWRk
X3JhbSByZWdpb25fYWRkIFtyYW1dIDB4MjgwMDAwMDAwMDAgLSAweDJhZTQxZWZmZmZmIFsweGZm
NWM3ZTAwMDAwMF0NCmlvbW11ZmRfYmFja2VuZF9tYXBfZmlsZV9kbWEgIGlvbW11ZmQ9MzAzIGlv
YXM9MiBpb3ZhPTB4MjgwMDAwMDAwMDAgc2l6ZT0weDJlNDFmMDAwMDAgZmQ9MzA4IHN0YXJ0PTAg
cmVhZG9ubHk9MCAoMCkNCg0KKipIb3dldmVyLCB0aGUgZ3Vlc3Qga2VybmVsIGNyYXNoZXMgZHVy
aW5nIFBDSSBpbml0aWFsaXphdGlvbjoqKg0KDQpbICAgIDEuNDIyMjgwXSBhY3BpIFBOUDBBMDg6
MDE6IEVDQU0gYXJlYSBbbWVtIDB4NDAxMDEwMDAwMC0weDQwMTAyZmZmZmZdIHJlc2VydmVkIGJ5
IFBOUDBDMDI6MDBeTQ0KWyAgICAxLjQyMjkwN10gYWNwaSBQTlAwQTA4OjAxOiBFQ0FNIGF0IFtt
ZW0gMHg0MDEwMTAwMDAwLTB4NDAxMDJmZmZmZl0gZm9yIFtidXMgMDEtMDJdXk0NClsgICAgMS40
MjM1NDFdIC0tLS0tLS0tLS0tLVsgY3V0IGhlcmUgXS0tLS0tLS0tLS0tLV5NDQpbICAgIDEuNDIz
OTA1XSBrZXJuZWwgQlVHIGF0IG1tL3ZtYWxsb2MuYzoxMDkhXk0NClsgICAgMS40MjQyNDBdIElu
dGVybmFsIGVycm9yOiBPb3BzIC0gQlVHOiAwMDAwMDAwMGYyMDAwODAwIFsjMV0gU01QXk0NClsg
ICAgMS40MjQ3MjRdIE1vZHVsZXMgbGlua2VkIGluOl5NDQpbICAgIDEuNDI0OTcyXSBDUFU6IDE5
IFBJRDogMSBDb21tOiBzd2FwcGVyLzAgTm90IHRhaW50ZWQgNi42LjEwMi01LjEwMF9yYzEuMS5h
bDguYWFyY2g2NCs2NGsgIzFeTQ0KWyAgICAxLjQyNTY0N10gSGFyZHdhcmUgbmFtZTogUUVNVSBL
Vk0gVmlydHVhbCBNYWNoaW5lLCBCSU9TIDAuMC4wIDAyLzA2LzIwMTVeTQ0KWyAgICAxLjQyNjIw
MV0gcHN0YXRlOiAwMTQwMTAwNSAobnpjdiBkYWlmICtQQU4gLVVBTyAtVENPICtESVQgK1NTQlMg
QlRZUEU9LS0pXk0NClsgICAgMS40MjY3NTFdIHBjIDogdm1hcF9wdGVfcmFuZ2UrMHgxNTgvMHgy
YjheTQ0KWyAgICAxLjQyNzEwMV0gbHIgOiB2bWFwX3B0ZV9yYW5nZSsweDE3OC8weDJiOF5NDQpb
ICAgIDEuNDI3NDU1XSBzcCA6IGZmZmY4MDAwODNmY2Y2ZDBeTQ0KWyAgICAxLjQyNzc1OF0geDI5
OiBmZmZmODAwMDgzZmNmNmQwIHgyODogMDA2ODAwMDA0MDgyMDcxMyB4Mjc6IDAwMDAwMDAwMDAw
MDQwODNeTQ0KWyAgICAxLjQyODMyOF0geDI2OiBmZmZmODAwMDgzZmNmN2Q0IHgyNTogMDA2ODAw
MDA0MDgyMDcxMyB4MjQ6IDAwMDAwMDAwMDAwMDAwM2ZeTQ0KWyAgICAxLjQyODg5NV0geDIzOiAw
MDY4MDAwMDAwMDAwNzEzIHgyMjogMDAxMDAwMDAwMDAwMDAwMSB4MjE6IGZmZmZmZmJmZmU4MDEw
MDBeTQ0KWyAgICAxLjQyOTQ2MF0geDIwOiBmZmZmZmZjMDAwMDQwMDAwIHgxOTogZmZmZjAwMThm
OTAxMDAyMCB4MTg6IGZmZmZmZmZmZmZmZmZmZmZeTQ0KWyAgICAxLjQzMDAzNF0geDE3OiA3NTYy
NWIyMDcyNmY2NjIwIHgxNjogNWQ2NjY2NjY2NjY2MzIzMCB4MTU6IDAwMDAwMDAwMDAwMDAwMDJe
TQ0KWyAgICAxLjQzMDU5OV0geDE0OiAwMDAwMDAwMDAwMDAwMDAwIHgxMzogZmZmZjAwMDBjOTZj
Y2YzNiB4MTI6IDc1NjI1YjIwNzI2ZjY2MjBeTQ0KWyAgICAxLjQzMTE4OV0geDExOiAwMDAwMDAw
MDAwMDAwMDJlIHgxMDogMDAwMDAzYmZmZTgwMDAwMCB4OSA6IGZmZmY4MDAwODAzNDE1NDReTQ0K
WyAgICAxLjQzMTgwMl0geDggOiBmZmZmMDAwMGM5NmI4YjgwIHg3IDogZmZmZjAwMThmOTAwMDAw
MCB4NiA6IGZmZmY4MDAwODNmY2Y3ZDReTQ0KWyAgICAxLjQzMjM3Nl0geDUgOiAwMDAwMDAwMDAw
MDAwMDNmIHg0IDogMDA2ODAwMDAwMDAwMDcxMyB4MyA6IDAwMDAwMDAwMDAwMDAwMDBeTQ0KWyAg
ICAxLjQzMjkzNl0geDIgOiBmZmZmZmZmZmZlN2QxMDAwIHgxIDogZmZmZjAwMzFmZmY4MTM4MCB4
MCA6IDAwMDAwMDAwMDAwMDAwMDheTQ0KWyAgICAxLjQzMzQ5NV0gQ2FsbCB0cmFjZTpeTQ0KWyAg
ICAxLjQzMzY4OV0gIHZtYXBfcHRlX3JhbmdlKzB4MTU4LzB4MmI4Xk0NClsgICAgMS40MzM5OTZd
ICB2bWFwX3JhbmdlX25vZmx1c2grMHgxOWMvMHgyNjBeTQ0KWyAgICAxLjQzNDMyM10gIGlvcmVt
YXBfcGFnZV9yYW5nZSsweDIwLzB4MzBeTQ0KWyAgICAxLjQzNDYzNl0gIHBjaV9yZW1hcF9pb3Nw
YWNlKzB4NzgvMHg5MF5NDQpbICAgIDEuNDM0OTYwXSAgYWNwaV9wY2lfcHJvYmVfcm9vdF9yZXNv
dXJjZXMrMHgxMjQvMHgyNjBeTQ0KWyAgICAxLjQzNTM3OF0gIHBjaV9hY3BpX3Jvb3RfcHJlcGFy
ZV9yZXNvdXJjZXMrMHgyMC8weGQwXk0NClsgICAgMS40MzU4MTRdICBhY3BpX3BjaV9yb290X2Ny
ZWF0ZSsweDk0LzB4MmU4Xk0NClsgICAgMS40MzYxNTRdICBwY2lfYWNwaV9zY2FuX3Jvb3QrMHg5
OC8weDEzMF5NDQpbICAgIDEuNDM2NDc0XSAgYWNwaV9wY2lfcm9vdF9hZGQrMHgxNWMvMHgyZjhe
TQ0KWyAgICAxLjQzNjc5NV0gIGFjcGlfYnVzX2F0dGFjaCsweDFiYy8weDMzOF5NDQpbICAgIDEu
NDM3MTA0XSAgYWNwaV9kZXZfZm9yX29uZV9jaGVjaysweDM4LzB4NDheTQ0KWyAgICAxLjQzNzQ0
NF0gIGRldmljZV9mb3JfZWFjaF9jaGlsZCsweDYwLzB4YjheTQ0KWyAgICAxLjQzNzc5OV0gIGFj
cGlfZGV2X2Zvcl9lYWNoX2NoaWxkKzB4NDAvMHg3MF5NDQpbICAgIDEuNDM4MTQ4XSAgYWNwaV9i
dXNfYXR0YWNoKzB4MjM0LzB4MzM4Xk0NClsgICAgMS40Mzg0NTRdICBhY3BpX2Rldl9mb3Jfb25l
X2NoZWNrKzB4MzgvMHg0OF5NDQpbICAgIDEuNDM4Nzk2XSAgZGV2aWNlX2Zvcl9lYWNoX2NoaWxk
KzB4NjAvMHhiOF5NDQpbICAgIDEuNDM5MTQ4XSAgYWNwaV9kZXZfZm9yX2VhY2hfY2hpbGQrMHg0
MC8weDcwXk0NClsgICAgMS40Mzk1MzFdICBhY3BpX2J1c19hdHRhY2grMHgyMzQvMHgzMzheTQ0K
WyAgICAxLjQzOTg1NF0gIGFjcGlfYnVzX3NjYW4rMHg2OC8weDIwOF5NDQpbICAgIDEuNDQwMTQy
XSAgYWNwaV9zY2FuX2luaXQrMHhkMC8weDJiOF5NDQpbICAgIDEuNDQwNDQ1XSAgYWNwaV9pbml0
KzB4ODAvMHgxNDBeTQ0KWyAgICAxLjQ0MDcwNF0gIGRvX29uZV9pbml0Y2FsbCsweDQ4LzB4MzQ4
Xk0NClsgICAgMS40NDEwMTBdICBkb19pbml0Y2FsbHMrMHgxMDQvMHgyMDBeTQ0KWyAgICAxLjQ0
MTMwNV0gIGtlcm5lbF9pbml0X2ZyZWVhYmxlKzB4MTI4LzB4MmEwXk0NClsgICAgMS40NDE2NDVd
ICBrZXJuZWxfaW5pdCsweDI4LzB4MWU4Xk0NClsgICAgMS40NDE5NDNdICByZXRfZnJvbV9mb3Jr
KzB4MTAvMHgyMF5NDQpbICAgIDEuNDQyMjMxXSBDb2RlOiA5N2YzZGRmNiBhYTAwMDNlMSBiNGZm
ZmE0MSBkNTAzMjAxZiAoZDQyMTAwMDApIF5NDQoNCkNvdWxkIHlvdSBzaGFyZSBtb3JlIGRldGFp
bHMgZm9yIHRlc3Rpbmc/LCBlLmcuIFFFTVUgY21kbGluZSwNCkd1ZXN0IGtlcm5lbCB2ZXJzaW9u
Lg0KDQpJJ2QgbGlrZSB0byBjb21wYXJlIHdpdGggbXkgc2V0dXAgdG8gaWRlbnRpZnkgdGhlIGRp
ZmZlcmVuY2UuDQoNClRoYW5rcy4NClNodWFpDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

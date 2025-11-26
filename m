Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aO0VF20A4Wk7oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:29:49 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E6FD410CC6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:29:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1B1034122D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:29:48 +0000 (UTC)
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com [67.231.145.42])
	by lists.linaro.org (Postfix) with ESMTPS id 9C53E3F7A5
	for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Nov 2025 00:18:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=fb.com header.s=s2048-2025-q2 header.b=W+AKvPIc;
	spf=pass (lists.linaro.org: domain of "prvs=74256e3cee=amastro@meta.com" designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=74256e3cee=amastro@meta.com";
	dmarc=pass (policy=reject) header.from=fb.com
Received: from pps.filterd (m0148461.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5APKA97n1087396;
	Tue, 25 Nov 2025 16:18:10 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=s2048-2025-q2;
	 bh=qGBFfom64ubwAcHLmi0kGY4idgptPgMMsGDiFpmxSnI=; b=W+AKvPIcq+Gs
	i3tYYc6MNSXntK0NmrX6mDMiJh2f1He+waI1tJUFw9eep8toqFOiXcXgv1d9N8HG
	PGdbn6/fGl6qS46R20vtpCyrMHLj0wH4JK9pXWvIXkrNgijhiczlYtlomrwOthSj
	zml1ieuFYLYIUzuWZ91PR3D7DWCyaUSc0LCurvPCQxAzzat402xRMP4oyeWdz0ty
	1EYyma4UMfnDB7SWN7UNyv49rng7qo94JM/vlLrbdULgh6NjCeHD1lakMZtk49rg
	EGdIyMsuzoL8EN2ERVeIEmaZ0+aXHHcjPKQINfA5NEORkyA0TfReyUgtpSsOkjBL
	M3cSvkYsxQ==
Received: from mail.thefacebook.com ([163.114.134.16])
	by mx0a-00082601.pphosted.com (PPS) with ESMTPS id 4ank8qsk46-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Tue, 25 Nov 2025 16:18:10 -0800 (PST)
Received: from devgpu015.cco6.facebook.com (2620:10d:c085:108::4) by
 mail.thefacebook.com (2620:10d:c08b:78::2ac9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.29; Wed, 26 Nov 2025 00:18:08 +0000
Date: Tue, 25 Nov 2025 16:18:03 -0800
From: Alex Mastro <amastro@fb.com>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <aSZHO6otK0Heh+Qj@devgpu015.cco6.facebook.com>
References: <20251120-dmabuf-vfio-v9-0-d7f71607f371@nvidia.com>
 <20251120-dmabuf-vfio-v9-6-d7f71607f371@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20251120-dmabuf-vfio-v9-6-d7f71607f371@nvidia.com>
X-Originating-IP: [2620:10d:c085:108::4]
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI2MDAwMCBTYWx0ZWRfX4aU+4yoxvGRI
 fn5uIgo4phoyJLcsXRpkIiEbPHjmDvXjee+0hL5hZTnMf7KiIbVFpuPgNNxmzJnPoXlqYrYFVCb
 EPyFD9HoNuq9bFWOWGD9jm+tH6jYX1bWvVVFfP7wmtxUCfM6nyWp9RhEW4F3WyT2gvOl06d0Lit
 II5EZrklZ4kZ6ZccZ6uI5fnA2fhf1sXF7BU/xkJ1DrQkkrbuth2BkU2ET85sZ92FJE5mmeSgTwT
 8QOBncjhE4/DUMlusLJDyljY4I1YOkD69BDnY6LZhPAqbK1Ws3OXJ/OhGSqPOvK63g6mktQG9A/
 4TjZvhvYG6pYNypXlNsc0JrFDrM/97nZlDYVEtn7wlUXLxFDOXnHdS+vQBslO6M76Dlb+/Whxi6
 97TQYdVHP7oL0xprhG3cL4XfcOc0nA==
X-Proofpoint-ORIG-GUID: 5DCeEKEPh0Lq0c0QeLIVINEpDK6-Nmfl
X-Proofpoint-GUID: 5DCeEKEPh0Lq0c0QeLIVINEpDK6-Nmfl
X-Authority-Analysis: v=2.4 cv=VfT6/Vp9 c=1 sm=1 tr=0 ts=69264742 cx=c_pps
 a=CB4LiSf2rd0gKozIdrpkBw==:117 a=CB4LiSf2rd0gKozIdrpkBw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=3j4BkbkPAAAA:8 a=qThf3vN7FU90BnacfoAA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-25_01,2025-10-01_01
X-Spamd-Bar: ---
X-MailFrom: prvs=74256e3cee=amastro@meta.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: IOZMUYLVFQEXXRTGCFWDHAYD7AYPOHOD
X-Message-ID-Hash: IOZMUYLVFQEXXRTGCFWDHAYD7AYPOHOD
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:06:59 +0000
CC: Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Jason Gunthorpe <jgg@ziepe.ca>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Alex Williamson <alex@shazbot.org>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-block@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
 , kvm@vger.kernel.org, linux-hardening@vger.kernel.org, Nicolin Chen <nicolinc@nvidia.com>, Jason Gunthorpe <jgg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v9 06/11] dma-buf: provide phys_vec to scatter-gather mapping routine
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IOZMUYLVFQEXXRTGCFWDHAYD7AYPOHOD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[fb.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[fb.com:s=s2048-2025-q2];
	DATE_IN_PAST(1.00)[3399];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[34];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[fb.com:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[amastro@fb.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_XOIP(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,devgpu015.cco6.facebook.com:mid]
X-Rspamd-Queue-Id: 0E6FD410CC6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCBOb3YgMjAsIDIwMjUgYXQgMTE6Mjg6MjVBTSArMDIwMCwgTGVvbiBSb21hbm92c2t5
IHdyb3RlOg0KPiArc3RhdGljIHN0cnVjdCBzY2F0dGVybGlzdCAqZmlsbF9zZ19lbnRyeShzdHJ1
Y3Qgc2NhdHRlcmxpc3QgKnNnbCwgc2l6ZV90IGxlbmd0aCwNCj4gKwkJCQkJIGRtYV9hZGRyX3Qg
YWRkcikNCj4gK3sNCj4gKwl1bnNpZ25lZCBpbnQgbGVuLCBuZW50czsNCj4gKwlpbnQgaTsNCj4g
Kw0KPiArCW5lbnRzID0gRElWX1JPVU5EX1VQKGxlbmd0aCwgVUlOVF9NQVgpOw0KPiArCWZvciAo
aSA9IDA7IGkgPCBuZW50czsgaSsrKSB7DQo+ICsJCWxlbiA9IG1pbl90KHNpemVfdCwgbGVuZ3Ro
LCBVSU5UX01BWCk7DQo+ICsJCWxlbmd0aCAtPSBsZW47DQo+ICsJCS8qDQo+ICsJCSAqIERNQUJV
RiBhYnVzZXMgc2NhdHRlcmxpc3QgdG8gY3JlYXRlIGEgc2NhdHRlcmxpc3QNCj4gKwkJICogdGhh
dCBkb2VzIG5vdCBoYXZlIGFueSBDUFUgbGlzdCwgb25seSB0aGUgRE1BIGxpc3QuDQo+ICsJCSAq
IEFsd2F5cyBzZXQgdGhlIHBhZ2UgcmVsYXRlZCB2YWx1ZXMgdG8gTlVMTCB0byBlbnN1cmUNCj4g
KwkJICogaW1wb3J0ZXJzIGNhbid0IHVzZSBpdC4gVGhlIHBoeXNfYWRkciBiYXNlZCBETUEgQVBJ
DQo+ICsJCSAqIGRvZXMgbm90IHJlcXVpcmUgdGhlIENQVSBsaXN0IGZvciBtYXBwaW5nIG9yIHVu
bWFwcGluZy4NCj4gKwkJICovDQo+ICsJCXNnX3NldF9wYWdlKHNnbCwgTlVMTCwgMCwgMCk7DQo+
ICsJCXNnX2RtYV9hZGRyZXNzKHNnbCkgPSBhZGRyICsgaSAqIFVJTlRfTUFYOw0KDQooaSAqIFVJ
TlRfTUFYKSBoYXBwZW5zIGluIDMyLWJpdCBiZWZvcmUgYmVpbmcgcHJvbW90ZWQgdG8gZG1hX2Fk
ZHJfdCBmb3INCmFkZGl0aW9uIHdpdGggYWRkci4gT3ZlcmZsb3dzIGZvciBpID49MiB3aGVuIGxl
bmd0aCA+PSA4IEdpQi4gTmVlZHMgYSBjYXN0Og0KDQoJCXNnX2RtYV9hZGRyZXNzKHNnbCkgPSBh
ZGRyICsgKGRtYV9hZGRyX3QpaSAqIFVJTlRfTUFYOw0KDQpEaXNjb3ZlcmVkIHRoaXMgd2hpbGUg
ZGVidWdnaW5nIHdoeSBkbWEtYnVmIGltcG9ydCB3YXMgZmFpbGluZyBmb3INCmFuIDggR2lCIGRt
YS1idWYgdXNpbmcgbXkgZWFybGllciB0b3kgcHJvZ3JhbSBbMV0uIEl0IHdhcyBzdXJmYWNlZCBi
eQ0KaWJfdW1lbV9maW5kX2Jlc3RfcGdzeigpIHJldHVybmluZyAwIGR1ZSB0byBtYWxmb3JtZWQg
c2NhdHRlcmxpc3QsIHdoaWNoIGJ1YmJsZXMNCnVwIGFzIGFuIEVJTlZBTC4NCg0KJCAuL3Rlc3Rf
ZG1hYnVmIDAwMDA6MDU6MDAuMCAzIDQgMCAweDIwMDAwMDAwMA0Kb3BlbmluZyAwMDAwOjA1OjAw
LjAgdmlhIC9kZXYvdmZpby81Ng0KYWxsb2NhdGluZyBkbWFfYnVmIGJhcl9pZHg9NCwgYmFyX29m
ZnNldD0weDAsIHNpemU9MHgyMDAwMDAwMDANCmFsbG9jYXRlZCBkbWFfYnVmIGZkPTYNCmRpc2Nv
dmVyZWQgNCBpYnYgZGV2aWNlczogbWx4NV8wIG1seDVfMSBtbHg1XzIgbWx4NV8zDQpvcGVuZWQg
aWJ2IGRldmljZSAzOiBtbHg1XzMNCnRlc3RfZG1hYnVmLmM6MTU0IENvbmRpdGlvbiBmYWlsZWQ6
ICdtcicgKGVycm5vPTIyOiBJbnZhbGlkIGFyZ3VtZW50KQ0KDQokIHN1ZG8gcmV0c25vb3AgLWUg
bWx4NV9pYl9yZWdfdXNlcl9tcl9kbWFidWYgLWEgJ21seDUqJyAtYSAnaWJfdW1lbSonIC1hICcq
dW1yKicgLWEgJ3ZmaW9fcGNpKicgLWEgJ2RtYV9idWZfKicgLXggRUlOVkFMIC1UDQpSZWNlaXZp
bmcgZGF0YS4uLg0KMTM6NTY6MjIuMjU3OTA3IC0+IDEzOjU2OjIyLjI1ODI3NSBUSUQvUElEIDk0
ODg5NS85NDg4OTUgKHRlc3RfZG1hYnVmL3Rlc3RfZG1hYnVmKToNCkZVTkNUSU9OIENBTExTICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUkVTVUxUICAgICAgICAgICAgICAgICBEVVJB
VElPTg0KLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0gICAtLS0t
LS0tLS0tLS0tLS0tLS0tLSAgLS0tLS0tLS0tDQrihpIgbWx4NV9pYl9yZWdfdXNlcl9tcl9kbWFi
dWYNCiAgICDihpQgbWx4NXJfdW1yX3Jlc291cmNlX2luaXQgICAgICAgICAgICAgICAgICBbMF0g
ICAgICAgICAgICAgICAgICAgICAyLjIyNHVzDQogICAg4oaSIGliX3VtZW1fZG1hYnVmX2dldA0K
ICAgICAgICDihpIgaWJfdW1lbV9kbWFidWZfZ2V0X3dpdGhfZG1hX2RldmljZQ0KICAgICAgICAg
ICAg4oaUIGRtYV9idWZfZ2V0ICAgICAgICAgICAgICAgICAgICAgIFsweGZmMTEwMTJhNmEwOThj
MDBdICAgIDAuOTcydXMNCiAgICAgICAgICAgIOKGkiBkbWFfYnVmX2R5bmFtaWNfYXR0YWNoDQog
ICAgICAgICAgICAgICAg4oaUIHZmaW9fcGNpX2RtYV9idWZfYXR0YWNoICAgICAgWzBdICAgICAg
ICAgICAgICAgICAgICAgMi4wMDN1cw0KICAgICAgICAgICAg4oaQIGRtYV9idWZfZHluYW1pY19h
dHRhY2ggICAgICAgICAgIFsweGZmMTEwMDAxMjc5M2U0MDBdICAgMTAuNTY2dXMNCiAgICAgICAg
4oaQIGliX3VtZW1fZG1hYnVmX2dldF93aXRoX2RtYV9kZXZpY2UgICBbMHhmZjExMDEyN2E2Yzc0
NDgwXSAgIDE1Ljc5NHVzDQogICAg4oaQIGliX3VtZW1fZG1hYnVmX2dldCAgICAgICAgICAgICAg
ICAgICAgICAgWzB4ZmYxMTAxMjdhNmM3NDQ4MF0gICAyNS4yNTh1cw0KICAgIOKGkiBtbHg1X2li
X2luaXRfZG1hYnVmX21yDQogICAgICAgIOKGkiBpYl91bWVtX2RtYWJ1Zl9tYXBfcGFnZXMNCiAg
ICAgICAgICAgIOKGkiBkbWFfYnVmX21hcF9hdHRhY2htZW50DQogICAgICAgICAgICAgICAg4oaS
IHZmaW9fcGNpX2RtYV9idWZfbWFwDQogICAgICAgICAgICAgICAgICAgIOKGlCBkbWFfYnVmX21h
cCAgICAgICAgICAgICAgWzB4ZmYxMTAwMDEyOTc3ZjcwMF0gICAgNC45MTh1cw0KICAgICAgICAg
ICAgICAgIOKGkCB2ZmlvX3BjaV9kbWFfYnVmX21hcCAgICAgICAgIFsweGZmMTEwMDAxMjk3N2Y3
MDBdICAgIDguMzYydXMNCiAgICAgICAgICAgIOKGkCBkbWFfYnVmX21hcF9hdHRhY2htZW50ICAg
ICAgICAgICBbMHhmZjExMDAwMTI5NzdmNzAwXSAgIDEwLjk1NnVzDQogICAgICAgIOKGkCBpYl91
bWVtX2RtYWJ1Zl9tYXBfcGFnZXMgICAgICAgICAgICAgWzBdICAgICAgICAgICAgICAgICAgICAx
Ny4zMzZ1cw0KICAgICAgICDihpQgaWJfdW1lbV9maW5kX2Jlc3RfcGdzeiAgICAgICAgICAgICAg
IFswXSAgICAgICAgICAgICAgICAgICAgIDYuMjgwdXMNCiAgICAgICAg4oaSIGliX3VtZW1fZG1h
YnVmX3VubWFwX3BhZ2VzDQogICAgICAgICAgICDihpIgZG1hX2J1Zl91bm1hcF9hdHRhY2htZW50
DQogICAgICAgICAgICAgICAg4oaSIHZmaW9fcGNpX2RtYV9idWZfdW5tYXANCiAgICAgICAgICAg
ICAgICAgICAg4oaUIGRtYV9idWZfdW5tYXAgICAgICAgICAgICBbdm9pZF0gICAgICAgICAgICAg
ICAgICAyLjAyM3VzDQogICAgICAgICAgICAgICAg4oaQIHZmaW9fcGNpX2RtYV9idWZfdW5tYXAg
ICAgICAgW3ZvaWRdICAgICAgICAgICAgICAgICAgNi43MDB1cw0KICAgICAgICAgICAg4oaQIGRt
YV9idWZfdW5tYXBfYXR0YWNobWVudCAgICAgICAgIFt2b2lkXSAgICAgICAgICAgICAgICAgIDgu
MTQydXMNCiAgICAgICAg4oaQIGliX3VtZW1fZG1hYnVmX3VubWFwX3BhZ2VzICAgICAgICAgICBb
dm9pZF0gICAgICAgICAgICAgICAgIDE0Ljk1M3VzDQogICAg4oaQIG1seDVfaWJfaW5pdF9kbWFi
dWZfbXIgICAgICAgICAgICAgICAgICAgWy1FSU5WQUxdICAgICAgICAgICAgICA2Ny4yNzJ1cw0K
ICAgIOKGkiBtbHg1cl91bXJfcmV2b2tlX21yDQogICAgICAgIOKGkiBtbHg1cl91bXJfcG9zdF9z
ZW5kX3dhaXQNCiAgICAgICAgICAgIOKGkiBtbHg1cl91bXJfcG9zdF9zZW5kDQogICAgICAgICAg
ICAgICAg4oaUIG1seDVyX2JlZ2luX3dxZSAgICAgICAgICAgICAgWzBdICAgICAgICAgICAgICAg
ICAgICAgMS43MDN1cw0KICAgICAgICAgICAgICAgIOKGlCBtbHg1cl9maW5pc2hfd3FlICAgICAg
ICAgICAgIFt2b2lkXSAgICAgICAgICAgICAgICAgIDEuNjMzdXMNCiAgICAgICAgICAgICAgICDi
hpQgbWx4NXJfcmluZ19kYiAgICAgICAgICAgICAgICBbdm9pZF0gICAgICAgICAgICAgICAgICAx
LjMxMnVzDQogICAgICAgICAgICDihpAgbWx4NXJfdW1yX3Bvc3Rfc2VuZCAgICAgICAgICAgICAg
WzBdICAgICAgICAgICAgICAgICAgICAyNy40NTF1cw0KICAgICAgICDihpAgbWx4NXJfdW1yX3Bv
c3Rfc2VuZF93YWl0ICAgICAgICAgICAgIFswXSAgICAgICAgICAgICAgICAgICAxMjYuNTQxdXMN
CiAgICDihpAgbWx4NXJfdW1yX3Jldm9rZV9tciAgICAgICAgICAgICAgICAgICAgICBbMF0gICAg
ICAgICAgICAgICAgICAgMTQxLjkyNXVzDQogICAg4oaSIGliX3VtZW1fcmVsZWFzZQ0KICAgICAg
ICDihpIgaWJfdW1lbV9kbWFidWZfcmVsZWFzZQ0KICAgICAgICAgICAg4oaUIGliX3VtZW1fZG1h
YnVmX3Jldm9rZSAgICAgICAgICAgIFt2b2lkXSAgICAgICAgICAgICAgICAgIDEuNTgydXMNCiAg
ICAgICAgICAgIOKGlCBkbWFfYnVmX2RldGFjaCAgICAgICAgICAgICAgICAgICBbdm9pZF0gICAg
ICAgICAgICAgICAgICAzLjc2NXVzDQogICAgICAgICAgICDihpQgZG1hX2J1Zl9wdXQgICAgICAg
ICAgICAgICAgICAgICAgW3ZvaWRdICAgICAgICAgICAgICAgICAgMC41MzF1cw0KICAgICAgICDi
hpAgaWJfdW1lbV9kbWFidWZfcmVsZWFzZSAgICAgICAgICAgICAgIFt2b2lkXSAgICAgICAgICAg
ICAgICAgMjMuMzE1dXMNCiAgICDihpAgaWJfdW1lbV9yZWxlYXNlICAgICAgICAgICAgICAgICAg
ICAgICAgICBbdm9pZF0gICAgICAgICAgICAgICAgIDQwLjMwMXVzDQrihpAgbWx4NV9pYl9yZWdf
dXNlcl9tcl9kbWFidWYgICAgICAgICAgICAgICAgICAgWy1FSU5WQUxdICAgICAgICAgICAgIDM2
My4yODB1cw0KDQpbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsL2FRa0xjQXhFbjRxbUYz
YzRAZGV2Z3B1MDE1LmNjbzYuZmFjZWJvb2suY29tLw0KDQpBbGV4DQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

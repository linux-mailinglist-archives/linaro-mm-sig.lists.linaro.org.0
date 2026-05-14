Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MCIiDgUMBmqleQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 14 May 2026 19:53:09 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F7C5458E8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 14 May 2026 19:53:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E4F8A4044C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 14 May 2026 17:53:06 +0000 (UTC)
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com [67.231.145.42])
	by lists.linaro.org (Postfix) with ESMTPS id 88F2F3F7F5
	for <linaro-mm-sig@lists.linaro.org>; Thu, 14 May 2026 17:52:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=meta.com header.s=s2048-2025-q2 header.b="uID4L/RT";
	spf=pass (lists.linaro.org: domain of "prvs=359494ca3e=mattev@meta.com" designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=359494ca3e=mattev@meta.com";
	dmarc=pass (policy=reject) header.from=meta.com
Received: from pps.filterd (m0109334.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64EFcvnL2814292
	for <linaro-mm-sig@lists.linaro.org>; Thu, 14 May 2026 10:52:54 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=meta.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=s2048-2025-q2;
	 bh=i7CC6BqBBL9skWarpnUsM1vRDVhAGp/lgIIkSrH6DrI=; b=uID4L/RTFdpM
	ym5kuxwAZGXnMvm5RC/hAqjahIGR4X97DZNauwiy3+2qdGeLwon1A2giOFCwt250
	p2DDOFCJbt9Xw927M+aXcmNFZurvTU6m7SIy/PDM/fiVkf7NqG6TpGzja1cpG9MB
	oTwuC4fhNj9UVZMTydsFMZmhDJ/rrspbDs+/u3Ko5yH+4iTRpMG6q0zdA+yDi3Md
	tcjYwnReCHshyKmsj+AJkYVjYTAYGsJnOGhPIjZevNDHjlHO3kIJTYdOvoyyMEyt
	xMAEBJM041u78SHl6dC35/Cnr/q8/tjegsMQIjHnAXNRAxTU9Av7XNoZtpSdIjkC
	VOZpBcrPXw==
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com [209.85.221.72])
	by mx0a-00082601.pphosted.com (PPS) with ESMTPS id 4e3nw11bfv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Thu, 14 May 2026 10:52:54 -0700 (PDT)
Received: by mail-wr1-f72.google.com with SMTP id ffacd0b85a97d-43efc93e4f6so5375079f8f.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 14 May 2026 10:52:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778781173; x=1779385973;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i7CC6BqBBL9skWarpnUsM1vRDVhAGp/lgIIkSrH6DrI=;
        b=r2YDOljbUMsPYs7kwRYx3xzsqFc91eNv2OiIOSYHfASnAX7NjpeO34m/aDO2z6UvWI
         zmni3Gl2kLKAo5kVCVgoc/lEvPNj/aew8wmZFGdhPSXMt7DXchyOJlLYx4tKtUl2+M2b
         CRqf/cN6aQWKneUelVh2labf+oIcvIr5PyKB3nNWDiC/TU2sbAcEFbqo8E/xQtzx7CKr
         1Ar7DNHxk/XlDw2yAbC4Jo9xbKBqdJXz5cWW/d4Gp0j7E4wyKM2pAhj6F29BwHXfZbGb
         CrwAuCySeKElGx06NaFnX6U9ZfOPMJ4URD/3spYIileYRAhPbzVT0uIdLMsN1CsBph73
         46jg==
X-Forwarded-Encrypted: i=1; AFNElJ9PuEI1VQvS0/BAT18YUu34iSDFoKgp9c0O4xB42zZ05hMtHZnLDAI03p3fpIH3UWXrX2fNXi4WbbV2rR+1@lists.linaro.org
X-Gm-Message-State: AOJu0YxsHvOeafdk0s4g7Qj43EkhYBaNCuYx8jv+P5FnFaSkDSHwiIsd
	9udZ70iLZf1TKgNTE/BGUFIdyNodnFTsQpRoTNR5fXkUzCPTUejd+Hx+JR8Qt/MUGaW+CnMs+yN
	D6Lf0mqf8I73UYf9+y/aySVPUgCN0c+iGSGqi/pPrTYQcczCm8ZxnCNhxNHzjO2cEQ0c=
X-Gm-Gg: Acq92OHVeHV1mBE2HmRddXGD6ee6dF+B630qDVQ8CLKwj8Yl7daGA+t3ZkY+RacWhwf
	XYB/uKylfSJwZEwRP3AnxV9wT2EIvHl/6kv8tm8u2Izwyl4n0pbDmM5uyUnrIOyf1/+grPOaEpX
	J9G8rBBwWLcQ8409V+6e1q7ad6zvrMUUA/2G1Ah/hlOTJJ3QdLbQ0hTVpn/ofEOobQrn0xLosws
	vdBWqGffX3H+q2mxT9Fs3JVbudAp1GNL5bIQDIJg5r6v6AErv/MKxeoQ7B9Pgbr7M7+r4tf7Plq
	tK1yv86ZJCVCyImYm4CC9hCwO2CVshg1R+s2CxmtvUtbMmG8mwKB1adhLO7Aa/52wXR95k/jKg5
	K7SP6Ra21Xf4flAoSbrfrKk28cq43vOOaLWGN7s7/iRzLLf0kSN7qzj4scNdHraBwoWiX9u2fmv
	W/HB7s6/xAEq50IPuk5P4VZRhLzqsCaRlumrL8R1X3IoxRrMbiyFGrMO8d14P7iQXO9WUTtTNyL
	RlFg/LRr38u0K9d0cLL2U0=
X-Received: by 2002:a05:6000:2f87:b0:452:c246:ab7a with SMTP id ffacd0b85a97d-45e5c5beb43mr98791f8f.14.1778781172708;
        Thu, 14 May 2026 10:52:52 -0700 (PDT)
X-Received: by 2002:a05:6000:2f87:b0:452:c246:ab7a with SMTP id ffacd0b85a97d-45e5c5beb43mr98748f8f.14.1778781172259;
        Thu, 14 May 2026 10:52:52 -0700 (PDT)
Received: from ?IPV6:2001:8b0:8b6:13d4:102e:f2af:e074:5cde? (e.d.c.5.4.7.0.e.f.a.2.f.e.2.0.1.4.d.3.1.6.b.8.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:8b6:13d4:102e:f2af:e074:5cde])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45da15a6449sm7910203f8f.37.2026.05.14.10.52.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 May 2026 10:52:51 -0700 (PDT)
Message-ID: <c2601b9c-9265-43da-9321-66db57446807@meta.com>
Date: Thu, 14 May 2026 18:52:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Leon Romanovsky <leon@kernel.org>, Alex Williamson <alex@shazbot.org>,
        Jason Gunthorpe <jgg@nvidia.com>
References: <20260416131815.2729131-1-mattev@meta.com>
 <20260416131815.2729131-5-mattev@meta.com>
 <20260501161915.75525c15@shazbot.org> <afhNeYS174EW7RYp@nvidia.com>
 <20260505104911.GB11063@unreal> <20260505085058.74c34290@shazbot.org>
 <20260506053511.GG11063@unreal>
From: Matt Evans <mattev@meta.com>
In-Reply-To: <20260506053511.GG11063@unreal>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE0MDE3OSBTYWx0ZWRfX6zNKlDN1fTni
 Rk1jVHYuLfMGUsrM2lQMLjlO+tDxTSQOgxl0G3aLQ7oCa0/Qzr/bz1uNvk8ZYNeL3RsphzZoa0/
 etBRBQ+cNfYFhTPWo1PW38rAJXUXPr5Lh78Zyd3P987Hc3RRzA4iXz6j15oOHS6zt18in7iweEz
 SbonH/qH9oenv7XochxQgAhSqI560bLUkEwmmcNCniEpIzp4A8vayeyl+Uh5Zs5391hNGFRgLT4
 WTQQxxaB/opRLjgxc8K6yfQQ7LRMIi/ZYCZXTL2WPVuz1HQcoXHsbk4z2XkDITw8Br6WgZ1Ftnw
 dheArenoAhpZ5ds1XZeDyeQRfBw2p5MMCBqxCzKw/sp5tMvxlySXCswsocFlB6Dh1UjJrRET/v1
 2/1aZPe6cOsNeNxZXFEwo2pK3bsc5skZdRNFKO4htFNIEEcZrjB4CyT7J9jYINs7ed1/1Pnls+W
 dGW8LlUUVYJNutpamtQ==
X-Authority-Analysis: v=2.4 cv=ceviaHDM c=1 sm=1 tr=0 ts=6a060bf6 cx=c_pps
 a=C8Sa+zVB7PeSwznsLr31Mw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=VkNPw1HP01LnGYTKEx00:22 a=7x6HtfJdh03M6CCDgxCd:22
 a=crHB47gyY4rKiduisYu9:22 a=VwQbUJbxAAAA:8 a=QhZvmJRm3SQzdzbRGmYA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=eYhU8IiCvE_ms1W8Tcak:22
X-Proofpoint-GUID: QdfRznDaQAtnKqw-6Klf-aHXRpTdG1YP
X-Proofpoint-ORIG-GUID: QdfRznDaQAtnKqw-6Klf-aHXRpTdG1YP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-14_04,2026-05-13_01,2025-10-01_01
X-Spamd-Bar: ----
Message-ID-Hash: KYYHB7IKLRVSY7DWA37FTKX3EZWSQLZ6
X-Message-ID-Hash: KYYHB7IKLRVSY7DWA37FTKX3EZWSQLZ6
X-MailFrom: prvs=359494ca3e=mattev@meta.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Alex Mastro <amastro@fb.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/9] vfio/pci: Convert BAR mmap() to use a DMABUF
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KYYHB7IKLRVSY7DWA37FTKX3EZWSQLZ6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 91F7C5458E8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[meta.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[meta.com:s=s2048-2025-q2];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[meta.com:-];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[mattev@meta.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_SPAM(0.00)[0.738];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[meta.com:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Action: no action

SGkgTGVvbiwgQWxleCwgSmFzb24sDQoNCk9uIDA2LzA1LzIwMjYgMDY6MzUsIExlb24gUm9tYW5v
dnNreSB3cm90ZToNCj4gDQo+IE9uIFR1ZSwgTWF5IDA1LCAyMDI2IGF0IDA4OjUwOjU4QU0gLTA2
MDAsIEFsZXggV2lsbGlhbXNvbiB3cm90ZToNCj4+IE9uIFR1ZSwgNSBNYXkgMjAyNiAxMzo0OTox
MSArMDMwMA0KPj4gTGVvbiBSb21hbm92c2t5IDxsZW9uQGtlcm5lbC5vcmc+IHdyb3RlOg0KPj4N
Cj4+PiBPbiBNb24sIE1heSAwNCwgMjAyNiBhdCAwNDo0MDo0MUFNIC0wMzAwLCBKYXNvbiBHdW50
aG9ycGUgd3JvdGU6DQo+Pj4+IE9uIEZyaSwgTWF5IDAxLCAyMDI2IGF0IDA0OjE5OjE1UE0gLTA2
MDAsIEFsZXggV2lsbGlhbXNvbiB3cm90ZToNCj4+Pj4gICAgDQo+Pj4+PiBFeHBvcnRpbmcgZG1h
LWJ1ZnMgZnJvbSB2ZmlvLXBjaSBpcyBhIGZlYXR1cmUsIGJ1dCBtbWFwIG9mIE1NSU8gQkFScyBp
cw0KPj4+Pj4gYSBsZWdhY3kgcmVxdWlyZW1lbnQuICBUaGF0IGxlZ2FjeSByZXF1aXJlbWVudCBu
b3cgZGVwZW5kcyBvbg0KPj4+Pj4gUENJX1AyUERNQSwgd2hpY2ggZGVwZW5kcyBvbiA2NEJJVCBh
bmQgWk9ORV9ERVZJQ0UuDQo+Pj4+DQo+Pj4+IFRoYXQgc2hvdWxkIGJlIHNwbGl0IHVwIG5vdywg
TGVvbiBtaXNzZWQgaXQgd2hlbiBoZSBhZGRlZCB0aGUgbmV3DQo+Pj4+IEFQSXMgdGhhdCBkaWRu
J3QgcmVxdWlyZSBaT05FX0RFVklDRS4uDQo+Pj4NCj4+PiBTb3JyeSwgd2hhdCBkaWQgSSBtaXNz
IGhlcmU/DQo+Pj4gVkZJT19ETUFCVUYgaXMgYW4gb3B0aW9uYWwgZmVhdHVyZSBhbmQgaXMgZW5h
YmxlZCBvbmx5IHdoZW4gUDJQIHN1cHBvcnQgaXMNCj4+PiBhdmFpbGFibGUuIEl0IGRvZXMgbm90
IGFmZmVjdCBsZWdhY3kgc3lzdGVtcyB3aGVyZSBQMlAgY2Fubm90IGJlIGVuYWJsZWQuDQo+Pg0K
Pj4gSWYgd2UgbG9vayBhdCB0aGUgbG9uZyB0ZXJtIHZpZXcgb2YgbW92aW5nIGV4Y2x1c2l2ZWx5
IHRvIGNkZXYvaW9tbXVmZCwNCj4+IHdoZXJlIFZGSU9fRE1BQlVGIGJlY29tZXMgdGhlIG1lY2hh
bmlzbSBmb3IgaW1wbGVtZW50aW5nIFAyUCBETUENCj4+IG1hcHBpbmdzLCBWRklPX0RNQUJVRiBt
YXkgYmUgb3B0aW9uYWwsIGJ1dCBpdCdzIGhpZ2hseSBkZXNpcmFibGUgZm9yDQo+PiBsZWdhY3kg
Y29tcGF0aWJpbGl0eS4gIFRoZXJlJ3MgYW4gYXJndW1lbnQgdGhvdWdoIHRoYXQgcHJvdmlkaW5n
IFAyUA0KPj4gY29tcGF0aWJpbGl0eSBvbiBwbGF0Zm9ybXMgdGhhdCBzdXBwb3J0IFBDSV9QMlBE
TUEgaXMgcHJvYmFibHkNCj4+IHN1ZmZpY2llbnQuDQo+Pg0KPj4gSG93ZXZlciwgaW4gcHJvdmlk
aW5nIG1tYXAgb2YgZG1hYnVmcyBhcyBhIGZlYXR1cmUsIHRoaXMgc2VyaWVzIGlzDQo+PiB3aXJp
bmcgYWxsIG1tYXBzIHRocm91Z2ggZG1hYnVmcyBhbmQgdGhlcmVmb3JlIHRoYXQgZGVwZW5kZW5j
eSBiZWNvbWVzDQo+PiBmdW5kYW1lbnRhbCB0byB0aGUgdXNlIG9mIHZmaW8tcGNpLiAgVGh1cyB0
aGUgZGlzY3Vzc2lvbiB3aGV0aGVyIHRoZQ0KPj4gbm90ZWQgY29uZmlnIHJlcXVpcmVtZW50cyBj
b3VsZCBiZSBsaWZ0ZWQuICBUaGFua3MsDQo+IA0KPiBSaWdodCwgdGhlcmUgd2FzIG5vIG5lZWQg
dG8gcmVtb3ZlIFpPTkVfREVWSUNFIHdoZW4gSSBhZGRlZCBteSBjb2RlLCBhbmQgSQ0KPiBsZWZ0
IHRoZSB0YXNrIG9mIGNsZWFuaW5nIGl0IG91dCBvZiBpc19wY2lfcDJwZG1hX3BhZ2UoKSBmb3Ig
YW5vdGhlciBkYXkuDQo+IFdpdGhvdXQgWk9ORV9ERVZJQ0UsIGFsbCBwYWdlcyBhcmUgdHJlYXRl
ZCBhcyBub27igJFQMlAuDQpKdXN0IGNoZWNraW5nIEknbSBmb2xsb3dpbmcgdGhlIGRlcHMgY29y
cmVjdGx5Li4uDQoNCklmIHdlIHJlbW92ZSB0aGUgUENJX1AyUERNQSBkZXBlbmRlbmN5IG9uIFpP
TkVfREVWSUNFIHRoZW4gKHdpdGhvdXQpIA0KaXQncyBwcmVzZW50IHdpdGggUDJQIGhhcmQtZGlz
YWJsZWQgKGFzIExlb24gc2F5cykuICBBbHJlYWR5IA0KYGlzX3BjaV9wMnBkbWFfcGFnZSgpID09
IGZhbHNlYCBiZWNhdXNlIGZvbGlvX2lzX3pvbmVfZGV2aWNlKCkgaXMgYWx3YXlzIA0KZmFsc2Ug
aW4gdGhhdCBjb25maWcuDQoNClRoZSBvbmx5IGRlcGVuZGVuY3kgdGhpcyBzZXJpZXMgYWRkcyBp
cyBmb3IgcGNpbV9wMnBkbWFfcHJvdmlkZXIoKSAoYW5kIA0Kc3VwcG9ydCkuICBXZSBjYW4gc2Vs
ZWN0IFBDSV9QMlBETUEgZm9yIHByb3ZpZGVyIHB1cnBvc2VzIChWRklPISkgYnV0IGlmIA0KIVpP
TkVfREVWSUNFIHRoZXJlJ3Mgbm8gUDJQLg0KDQpOb3RoaW5nIGluIFBDSV9QMlBETUEgZGVwZW5k
cyBvbiA2NEJJVCBhbmQgdGhhdCBkZXBlbmRlbmN5IGNhbiBiZSANCnJlbW92ZWQgWzFdLiAgKFpP
TkVfREVWSUNFIGRlcGVuZHMgb24gNjRCSVQuKQ0KDQpUaGF0IHNlZW1zIGEgcGF0aCB0byBWRklP
IG9wZXJhdGluZyB1bmNoYW5nZWQgb24gMzItYml0IHBsYXRmb3JtcyBhbmQgDQpvdGhlcnMgd2l0
aG91dCBaT05FX0RFVklDRS4NCg0KKFBDSV9QMlBETUEgY3VycmVudGx5IGFsc28gZGVwZW5kcyBv
biBORUVEX1NHX0RNQV9GTEFHUywgd2hpY2ggc2VlbXMgdG8gDQpiZSB1bm5lY2Vzc2FyeSBpZiAh
Wk9ORV9ERVZJQ0UgaXMgcHJldmVudGluZyBQMlAgcGFnZXMgKG5vIA0Kc2dfZG1hX21hcmtfYnVz
X2FkZHJlc3MoKSB3b3VsZCBoYXBwZW4gZm9yIGV4YW1wbGUpLCBpcyB0aGF0IHJpZ2h0PykNCg0K
DQpUaGVuIFZGSU9fUENJIGRlcGVuZHMgb24gYSBzdWJzZXQgb2YgUENJX1AyUERNQSBjb25maWd1
YXRpb246DQoNCiJEaWV0IiBQQ0lfUDJQRE1BX0NPUkUgYXZhaWxhYmxlIGV2ZW4gd2hlbiAhWk9O
RV9ERVZJQ0U6DQogIC0gQ29tcGF0aWJsZSB3aXRoIDMyLWJpdCBwbGF0Zm9ybXM7IGRvZXNuJ3Qg
bmVlZCB0byBkZXBlbmQgb24gNjRCSVQNCiAgLSBSZXR1cm5zIGEgcHJvdmlkZXIsIHdoaWNoIGFs
bG93cyBWRklPIG1tYXAoKSwgRE1BQlVGIG1tYXAoKS4NCiAgLSBEb2Vzbid0IGFsbG93IFAyUCBE
TUEgKGVnLiB2aWEgRE1BQlVGcykuDQogIC0gRG9lc24ndCBuZWVkIHRvIHNlbGVjdCBORUVEX1NH
X0RNQV9GTEFHUy4NCg0KIkNsYXNzaWMiIFBDSV9QMlBETUEgZGVwZW5kaW5nIG9uIFpPTkVfREVW
SUNFOg0KICAtIEJlaGF2ZXMgYXMgUENJX1AyUERNQSBkb2VzIHRvZGF5DQogIC0gSWYgWk9ORV9E
RVZJQ0UgdGhlbiBQQ0lfUDJQRE1BIGVuYWJsZWQsIHdoaWNoIGVuYWJsZXMgVkZJT19QQ0lfRE1B
QlVGDQoNCk1lYW5pbmc6DQoNCjMyLWJpdCBjb25maWdzIChvciA2NC1iaXQgd2l0aG91dCBaT05F
X0RFVklDRSk6DQogIC0gTm8gUDJQIGFueXdheQ0KICAtIFZGSU8gbW1hcCgpIHdvcmtzDQogIC0g
VkZJT19QQ0lfRE1BQlVGIGlzIGRpc2FibGVkIChubyBwb2ludCBlbmFibGluZyBETUFCVUYgZXhw
b3J0IHNpbmNlIGl0DQogICAgY2FuJ3QgYmUgdXNlZCBmb3IgaXRzIG9yaWdpbmFsIFAyUCBwdXJw
b3NlKQ0KDQo2NC1iaXQgY29uZmlncyB0aGF0IHN1cHBvcnQgWk9ORV9ERVZJQ0U6DQogIC0gQXMg
dG9kYXksIERNQUJVRiBQMlAsIG1tYXAoKSBvZiBCQVJzIHZpYSBWRklPIG9yIERNQUJVRg0KDQoN
Ckp1c3QgYWRkZWQgUENJX1AyUERNQV9DT1JFIGFuZCAoZnVuY3Rpb25hbGx5KSB+bm8gY29kZSBj
aGFuZ2VzIGFyZSANCm5lZWRlZCBzaW5jZSBkaXNhYmxpbmcgUDJQIGp1c3QgZmFsbHMgb3V0IG9m
ICFaT05FX0RFVklDRS4gIEJ1dCBtb3N0IG9mIA0KcDJwZG1hLmMgZG9lcyBub3RoaW5nIGluIHRo
YXQgY29uZmlnIChleGNlcHQgZm9yIHBjaW1fcDJwZG1hX3Byb3ZpZGVyKCkgDQphbmQgaXRzIHN1
cHBvcnQpIHNvIGJlbmVmaXRzIGZyb20gc29tZSAjaWZkZWYgdG8gcmVkdWNlIGl0LiAgV0RZVCBh
Ym91dCANCmEgcGNpcDJwZG1hX2NvcmUuYyBjb250YWluaW5nIGp1c3QgdGhlIHByb3ZpZGVyIG1h
bmFnZW1lbnQ/DQoNCg0KVGhhbmtzLA0KDQpNYXR0DQoNClsxXTogIFRoZSBkcml2ZXJzL3BjaS9L
Y29uZmlnJ3MgUENJX1AyUERNQSBzdGF0ZXM6DQogICAjIFRoZSBuZWVkIGZvciB0aGUgc2NhdHRl
cmxpc3QgRE1BIGJ1cyBhZGRyZXNzIGZsYWcgbWVhbnMgUENJIFAyUERNQQ0KICAgIyByZXF1aXJl
cyA2NGJpdA0KSSB0aGluayB0aGlzIGlzbid0IHF1aXRlIHJpZ2h0IGFzIEFGQUlDVCB0aGUgZmxh
Z3MgYXJlIHVzYWJsZSBvbiAzMmIgDQp0b28sIGFuZCBhY3R1YWxseSBpdCdzIFpPTkVfREVWSUNF
IHRoYXQgcmVxdWlyZXMgNjRiaXQuDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

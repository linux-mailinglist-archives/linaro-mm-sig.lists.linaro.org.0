Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KDSCF8Bj5mkKvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:34:56 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A548431819
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:34:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 20FB040513
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:34:55 +0000 (UTC)
Received: from mx0b-00082601.pphosted.com (mx0b-00082601.pphosted.com [67.231.153.30])
	by lists.linaro.org (Postfix) with ESMTPS id 2C23C3F806
	for <linaro-mm-sig@lists.linaro.org>; Tue, 31 Mar 2026 15:24:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=meta.com header.s=s2048-2025-q2 header.b=NgpBhtFm;
	dmarc=pass (policy=reject) header.from=meta.com;
	spf=pass (lists.linaro.org: domain of "prvs=25502be513=mattev@meta.com" designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=25502be513=mattev@meta.com";
	arc=pass ("google.com:s=arc-20240605:i=1")
Received: from pps.filterd (m0528006.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62VDKsBR3315987
	for <linaro-mm-sig@lists.linaro.org>; Tue, 31 Mar 2026 08:24:23 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=meta.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=s2048-2025-q2;
	 bh=rVzD9RZ8DOj+OZScnURt3JaaKOoh5Y6w5keNNJrEDEk=; b=NgpBhtFmItDM
	CNbcwb/E9DkdCKHJ/+HXG5nYnUCSAGdnK0J1DywzsfubqT3zoyDOiorROwlve6f5
	Fabj2p7OS4l9/vDda/nt1iaWFhmj/dD7ikbmlCSU9C3dxHoD/BW1829WKG1gSNUo
	bvhspgCJNM7QlFoJ6rz3LBSz57IF68o48IZ5V4B4vXaE0cFVG0Wx1twzhAphguZA
	x2QO4KynACOL7v8zMEgjTg34ybae8h4kqqcSIVWunaNwvXNvzVjB0rqBMikZSh7r
	g5YEFzd1SPUtzJOBJK+aZ0ehLdWWfxZnd/kXQFeHL1MALxrPKcsgO9HqIAQQZ7ex
	Zwkn3t7Umw==
Received: from mail-oa1-f71.google.com (mail-oa1-f71.google.com [209.85.160.71])
	by mx0a-00082601.pphosted.com (PPS) with ESMTPS id 4d6ymfw7d3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Tue, 31 Mar 2026 08:24:23 -0700 (PDT)
Received: by mail-oa1-f71.google.com with SMTP id 586e51a60fabf-41c08879ba3so24581793fac.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 31 Mar 2026 08:24:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774970663; cv=none;
        d=google.com; s=arc-20240605;
        b=W61AeQKVkT/3Oy9eM6eGFuYSusik7TWjE03p5E1hXjnXLyZLxQCePppIGlOVeK1PPb
         Dtiszk1GS42eUgbabffDdKgVJI7l8IrFE6Hl+n/t1PIde5UDFCVEKYSPAV+f0NYSEBFG
         yuMy2GS33vI6PeaivdXuKk02eo7TfGUROs6adAf4xIhXTLMRA+Q0dMSsfcJgAT1H5z1R
         PW2qN6It4Xfx+i4vUDNemdAycNvqY8EJukXyeWU16A0c6eH61eiYzhj1VrUWIgLVutQM
         sYCJyuIcBijFcXLc7Pw9zCGXtE/1T2eJTeLERtluqapmVwVCaLOPchoy3qejwmJCfsLr
         RF3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version;
        bh=rVzD9RZ8DOj+OZScnURt3JaaKOoh5Y6w5keNNJrEDEk=;
        fh=pUDnRIBoT2LfZ90tJs/7bbk736FPOIuifKR6yUiVk6g=;
        b=S7cgYSbLLNhVaT39Kc9ebV4Zk6NYtDgIV7vqHEes2dzcNCsj4jm30E507DUQN2KVWG
         kUc4afLJ5G435Q1X43OZhxtOUn+WFxKCMlnZtoREHGmeoQk93LT9F5Qzo6/lrc1SQ5tQ
         JmvQE4yTmmUA3I4JGlcLSTwUYc+XAN7sX5eYu/xgGBVm6gnIQ0ibIT7g6H3h3i4X9BEQ
         uE07HVaUPPEJ0R2/O7fTfYL6ZHSH/9YIJjwClCV15gO8U9S1gEyxeBAKrIaNpTTQ8IuQ
         mPV3nvXMFlOZ+nrh90Y8K+sBVmpZTv6PFEe8FVfpC9OjznLRyqG6I9kiudR5DnsdFMen
         TltQ==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774970663; x=1775575463;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rVzD9RZ8DOj+OZScnURt3JaaKOoh5Y6w5keNNJrEDEk=;
        b=QElB9HAKyu/iQph3apF5Y6ozY8qWwp0Dkgr7t8LiP0Vdu5zsWaNnBGYW8vQR06p9/g
         XJftlUttYX9qDML3NovacXLd0SKrh8h+tnKdBL66mYY/fX2DhYEj+fxkzSoC1VT/3gwr
         76tnoYVstMAcDw/7zHtBwRaR7szYs4R8JVnip83QPqEGH7OJBvHp4Wz/bJGjtDcuWuNK
         XIwtkwYPNHGL46p69P8UUJvaowecqwoltpy+Ys/xobnwNvW8+y3uu5lDUkpCtxGWhe13
         5K6p0jrFqqv+B2G6JoyyT02ON2QfBeIlRppDWODZmuZIkOQuJohjj3OXCJ8X4BDVOsi+
         aavQ==
X-Forwarded-Encrypted: i=1; AJvYcCVCUBhf+hI0MX9D+cwTmuoyiEc/LUvO2ALqxMyG4Ks1sewnjFp0oKRGrQFpjzoh6bsZiCq0//d///XzBaBA@lists.linaro.org
X-Gm-Message-State: AOJu0Yz3a0PVRsn2OFlR0MzGcIpTOATu4H3Fi6MlOlpN9nUgIxylFNxF
	UqC0mWm0Yir4Dg4iEV3nZUqazUDK+UdIJjX1Wb9FifUbGnFBODiL8/I3Wot2HMnV3eLmIndvahI
	VIkY7lwYXr6URkQBqfibCPVM3FuGq5aIakVL2pHy+KKQ+++xEbCkQb+iYhu5ZufGqS/XwJv9Rqu
	X3D079NpKIms3+iqSo+WsbmwxAuZEVpFN6b1tFZShsMg==
X-Gm-Gg: ATEYQzyRljm/f0CoCaL+kaqJre+m+uQiqAnukVVft8iuvcPO3yTyHZsd5npKfPRNgvB
	P3T1v9pE04ct3SKkMdemAXJDE5qJSPaCVD/8qsdyk7/gojTgDYx/j6lRiphA3UHXKNuC270YSJn
	AflVBEWWUtePZ9gHIj+rdZDKDjl7GyJtuMS41OtBAvDWJ6hZdCmbNF4jD9uoMK+4bVeYSI9irYX
	6r8
X-Received: by 2002:a05:6820:2901:b0:67f:31e3:81a with SMTP id 006d021491bc7-67f31e31008mr367464eaf.2.1774970662744;
        Tue, 31 Mar 2026 08:24:22 -0700 (PDT)
X-Received: by 2002:a05:6820:2901:b0:67f:31e3:81a with SMTP id
 006d021491bc7-67f31e31008mr367434eaf.2.1774970662327; Tue, 31 Mar 2026
 08:24:22 -0700 (PDT)
MIME-Version: 1.0
References: <20260312184613.3710705-1-mattev@meta.com> <20260312184613.3710705-10-mattev@meta.com>
 <20260330133336.GT310919@nvidia.com>
In-Reply-To: <20260330133336.GT310919@nvidia.com>
From: Matt Evans <mattev@meta.com>
Date: Tue, 31 Mar 2026 16:24:11 +0100
X-Gm-Features: AQROBzBjz_Oa24Ou_FBmQkKdtClzBrzQA9IDx3XIRw5UCOwDpX9lbYyqY3Y5W8c
Message-ID: <CAFzAbJHqnuV2vA-LPQy3xo1KesLUxJOCtS4FigsaZtaZEi19jQ@mail.gmail.com>
To: Jason Gunthorpe <jgg@nvidia.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzMxMDE0OCBTYWx0ZWRfX7ZSw3WwQpVk5
 rMi48jQPdRsIGIYuYdWLJNZtuDrfdiqjFT+foriShqbTOgbE0Hxjk91ZPd4iinAOwufXt47APQr
 YMk4mVhiRWvqvLx2mMVqRKccXKXLfxYH27KPl0ZpHxqIMeEG42bSnq42o4vhfmrKAkh1CboFKm/
 yw/n5buJxn2K72m5Ojz6M/vis/H93mTd6Z7A8mRdUKVC9uV91OAoKVtlgW0JkCz+9apS+V/mUvt
 ctAmGVBL570qeBLrlmhfS26W8DPuYQ06DzsIy2i6tMvmVjs1BhB+qjL08yUwiAGs1y6n72d86OM
 HTrbNOVMCEkOe3W3UlKHxHOfFk4aPrG0h04zCs08rGgZCM+FbHFLyxaQ0RFVNVGIp2msqKz+re6
 OURGyrGRJ59kuyV0WUJEfVtqnGbrV/FpkPh9xOhewfBIP8hUBPtPVgnW+PjxELmOA6Vhaq0TB1I
 KIstUlfOuh+imwCwPaw==
X-Proofpoint-GUID: yENOtYkG2pOF0TNpwoB4oYgMKp2jHFzR
X-Proofpoint-ORIG-GUID: yENOtYkG2pOF0TNpwoB4oYgMKp2jHFzR
X-Authority-Analysis: v=2.4 cv=UM7Q3Sfy c=1 sm=1 tr=0 ts=69cbe727 cx=c_pps
 a=CWtnpBpaoqyeOyNyJ5EW7Q==:117 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=7x6HtfJdh03M6CCDgxCd:22 a=kkcUborcUVj0H7zxAXTl:22
 a=Ikd4Dj_1AAAA:8 a=scxTcjKw9OI2Du0FDOwA:9 a=QEXdDO2ut3YA:10 a=ZXulRonScM0A:10
 a=vh23qwtRXIYOdz9xvnmn:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-31_03,2026-03-31_01,2025-10-01_01
X-Spamd-Bar: -----
X-MailFrom: prvs=25502be513=mattev@meta.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: DWWF42JV5RXHFWM6JIFMQYXXXIHQ6WTB
X-Message-ID-Hash: DWWF42JV5RXHFWM6JIFMQYXXXIHQ6WTB
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:33:36 +0000
CC: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>, Alex Mastro <amastro@fb.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 PATCH 09/10] vfio/pci: Add mmap() attributes to DMABUF feature
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DWWF42JV5RXHFWM6JIFMQYXXXIHQ6WTB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [4.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[meta.com : SPF not aligned (relaxed),reject];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[meta.com:s=s2048-2025-q2];
	DATE_IN_PAST(1.00)[482];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[mattev@meta.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[meta.com:-];
	NEURAL_HAM(-0.00)[-0.831];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,nvidia.com:email]
X-Rspamd-Queue-Id: 0A548431819
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SEkgSmFzb24sDQoNCk9uIE1vbiwgTWFyIDMwLCAyMDI2IGF0IDI6MzPigK9QTSBKYXNvbiBHdW50
aG9ycGUgPGpnZ0BudmlkaWEuY29tPiB3cm90ZToNCj4NCj4gT24gVGh1LCBNYXIgMTIsIDIwMjYg
YXQgMTE6NDY6MDdBTSAtMDcwMCwgTWF0dCBFdmFucyB3cm90ZToNCj4gPiBBIG5ldyBmaWVsZCBp
cyByZXNlcnZlZCBpbiB2ZmlvX2RldmljZV9mZWF0dXJlX2RtYV9idWYuZmxhZ3MgdG8NCj4gPiBy
ZXF1ZXN0IENQVS1mYWNpbmcgbWVtb3J5IHR5cGUgYXR0cmlidXRlcyBmb3IgbW1hcCgpcyBvZiB0
aGUgYnVmZmVyLg0KPiA+IEFkZCBhIGZsYWcgVkZJT19ERVZJQ0VfRkVBVFVSRV9ETUFfQlVGX0FU
VFJfV0MsIHdoaWNoIHJlc3VsdHMgaW4gV0MNCj4gPiBQVEVzIGZvciB0aGUgRE1BQlVGJ3MgQkFS
IHJlZ2lvbi4NCj4NCj4gVGhpcyBzZWVtcyB2ZXJ5IHN0cmFpZ2h0Zm9yd2FyZCwgSSBsaWtlIGl0
DQo+DQo+IERpZCBJIGdldCBpdCByaWdodCB0aGF0IHRoZSBpZGVhIGlzIHRoZSB1c2VyIHdvdWxk
IHJlcXVlc3QgYSBkbWFidWYNCj4gd2l0aCB0aGVzZSBmbGFncyBhbmQgdGhlbiBtbWFwIHRoZSBk
bWFidWY/DQoNClJpZ2h0LCBleHBvcnQgaXQgd2l0aCBhIHJlcXVlc3RlZCBhdHRyaWJ1dGUgKGFz
IHBvc3NpYmx5IHNvbWUNCnN1Yi1zbGljZShzKSBvZiBhIGxhcmdlciBCQVIgaWYgeW91IGxpa2Up
IGFuZCB0aGVuIG1hcCBpdCAobm8NCmF0dHJpYnV0ZXMgbmVlZCB0byBiZSBzcGVjaWZpZWQgYXQg
bW1hcCgpIHRpbWUpLg0KDQpUaGFua3MsDQoNCk1hdHQNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=

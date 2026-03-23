Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eH4uF6lh5mm6vgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:26:01 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F34431302
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:26:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 96C273F6C2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:25:59 +0000 (UTC)
Received: from mx0b-00082601.pphosted.com (mx0b-00082601.pphosted.com [67.231.153.30])
	by lists.linaro.org (Postfix) with ESMTPS id 05DA43F679
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Mar 2026 14:56:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=meta.com header.s=s2048-2025-q2 header.b=eLtemJKK;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of "prvs=15427aea8c=mattev@meta.com" designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=15427aea8c=mattev@meta.com";
	dmarc=pass (policy=reject) header.from=meta.com
Received: from pps.filterd (m0109331.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62NEgbQK710208
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Mar 2026 07:56:03 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=meta.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=s2048-2025-q2;
	 bh=/SbFMZE76p3gfmGbK12ObrHMOu+elkT4/3PXLPlFc6s=; b=eLtemJKK4Has
	CmgOJDrPyaoCnUKj/6m6pqv7c6rX5uKoNz278WPHV0NiaUJpobtYFO2c/H2u68V6
	rUcPfFnGGMkA1R9FznzGaso1EetXEsib33uPa8YS5DWKk/0H2+KRC5WmKpB4cexD
	WHP7rDQAp69Dwi6aLhiv0mxz/YtBATdPlBxZtCUbBSkgvz/ZWuCH7WY9e+9QunMn
	U71mnXfpBfmdW222Bg4EpE/mrvmdhA8ahhryGTBsBHhUVMfP+BPmcCKkhg/LGSi4
	aPVDqho1R8TPq9TMs70rd1fcR4pcGEwLRzN4l/Xx6Hgq2nJapc1J6r1TnayJIgy3
	wnJnWEn1Dw==
Received: from mail-oa1-f70.google.com (mail-oa1-f70.google.com [209.85.160.70])
	by mx0a-00082601.pphosted.com (PPS) with ESMTPS id 4d1s56q9ah-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Mar 2026 07:56:03 -0700 (PDT)
Received: by mail-oa1-f70.google.com with SMTP id 586e51a60fabf-41c5c1675c9so6886033fac.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Mar 2026 07:56:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774277763; cv=none;
        d=google.com; s=arc-20240605;
        b=bpH54xu1V9X0bEkoB5tfWsfFBOyMwLXx4lzrsTVrot9msX7vOMl0N3d1B8+DkQxz1y
         sm0zTNvf3/FuKMYeFiTZEnJctnrS/NTefCfaKDjjfP11tXCcY3yET5FAGIj5gjxJwcxO
         uFdwoAbvCNa8EKLg5A+H/1N5bItHYmNhDVUniI8ynxnOOceh16AKfnEnlyEaQvYxEege
         u1c8VK1eXwKBAkUXKAued/XLK818x/vMCc+3/i3l3+Lx1OSXpjVk8S/q9RPuRYo1CAwd
         W1IoifPgyNdppjnpG4Ylmb3DIm95TCo0engFwYO4PZJF7XVTmictSLNPDRcelGySVX7m
         2rTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version;
        bh=/SbFMZE76p3gfmGbK12ObrHMOu+elkT4/3PXLPlFc6s=;
        fh=Ht8cLtnsUZLkkeVLHJhVoQ3cTwYQAyjOxxaLht6H78A=;
        b=I+ROCVi+O1fCUmXzGr1Nb15OVfCP9RrRl+vlEJrkGLWdRpePSozw9dRiD2u0/dLUr3
         Z7LNYCs6OfvoXLuhWn+p+Y/PL5prgOnO8+I8HcEs7nWg5zjKa16sxtsgH1ZOmegwTBZb
         i1zbl7Ga5DT2oK3hETnafd6sxP8cG1gYEke7eCQcONJHjrwhxwIBDlfeH9INbLgYR31G
         qUQqrj4iwk6+cqnna9iwBuYsQ291Vg64BL1DAgQUnvHrtKuAQWvhR390V+/lLKpvY/Bx
         gNiE/X6TfoW/Yno0o2aXLQViGpxEQ5R477XeRURV48T8ZKrOI1hUG4BygA9RbdK5je87
         T49A==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774277763; x=1774882563;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/SbFMZE76p3gfmGbK12ObrHMOu+elkT4/3PXLPlFc6s=;
        b=f8C+HRchgdoShinHgOmsQAHvPhbl5npNrHIBJmnBBQRNENFoCB1ZQaVuEOfD5tN2+1
         AkaTFncD+pkOfq1SpibeiddCGD+dtyoWRLk1Bt9rVtZKZzIEgaBkKHHhQlJWfEjlESNZ
         Me5Pz/28xNtKo1RmkK7Ukw5L4Grg+MZgJi/iIp1HDvKiNjLr3YZtJsQ85wCJTJbjxupq
         D2PrvLASgkrWSrI2z1qP6fdGCKB/ejlm0fOH6JdM7quHy0iTBbRLbZWOGptSUwVhBexx
         9nZEg2Gpb7mwViqjEajNvxw8IPl5I1PYttrspBCcVyHdsyRS0bA6VcI1QsFWTzfxakaa
         iU/g==
X-Forwarded-Encrypted: i=1; AJvYcCXylYnEmK8kBO3zfl9OvfaQEx3aXS6hvFKidqiT3yB1XkP9D/lnK8wL/rLSfovK3svdAE0K7TYvfzSAApvq@lists.linaro.org
X-Gm-Message-State: AOJu0YxzamykZ6g7SDCLAyDXN3EbVLqV7F2XjlAx3t+N56YKeNCe9Dg8
	I9+cEyXLnjoy8T1uO9LWflWCpk5S1BeB+pna0QMvZH2yDG5wQZ80VrpjBMRJg1yzHEdJp+oRDop
	b5UwrxaXYnydi4/f7vk+UFqK3Z95gVOnioVmX1/TpOqfVACZcYfyWYGi4/EcqSTCTb9/qY8rAxf
	l9sl1XfrxSSOCGvZEwCBitO1+fpFtT3qOXhNzLQwsnEg==
X-Gm-Gg: ATEYQzzI5GCDdL5oY8triYxFU90bgwisKNM9tq2hNifXtvMniiGFs9PBRf3/KRLNHIO
	hHu7VPeF/20gzW7KpJzxJc8XME4w6pop+TT0doKr1BwitCvSK9dffjZJVmTHl3ADatroBnMt1N6
	c9wQqGyH3nIe+MUbVoBs+kfDafpXM1wyMlS/zoAh2lsy3iAnhZIvRVACRX5dOIkDX4pn0k0TcfX
	hrFCn55X6q0Mit6EUYiZQ==
X-Received: by 2002:a05:6870:d694:b0:409:77a9:f951 with SMTP id 586e51a60fabf-41c10eff3demr8063011fac.11.1774277762635;
        Mon, 23 Mar 2026 07:56:02 -0700 (PDT)
X-Received: by 2002:a05:6870:d694:b0:409:77a9:f951 with SMTP id
 586e51a60fabf-41c10eff3demr8062984fac.11.1774277762035; Mon, 23 Mar 2026
 07:56:02 -0700 (PDT)
MIME-Version: 1.0
References: <20260312184613.3710705-1-mattev@meta.com> <20260312184613.3710705-5-mattev@meta.com>
 <20260318140408.4677fff5@shazbot.org>
In-Reply-To: <20260318140408.4677fff5@shazbot.org>
From: Matt Evans <mattev@meta.com>
Date: Mon, 23 Mar 2026 14:55:51 +0000
X-Gm-Features: AaiRm53cK7A_m0KWvttAGgjGrqlnTSfUkM-9VEpOFaKWwlBtmEfLrXJeDgr0v_M
Message-ID: <CAFzAbJGdYpaw0rAwLxLqqzzUiaPjySLXYsnS+hWwF4-GkBmgyQ@mail.gmail.com>
To: Alex Williamson <alex@shazbot.org>
X-Authority-Analysis: v=2.4 cv=Ys8ChoYX c=1 sm=1 tr=0 ts=69c15483 cx=c_pps
 a=nSjmGuzVYOmhOUYzIAhsAg==:117 a=Dv35txUGz5gI0hTa:21 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=VkNPw1HP01LnGYTKEx00:22 a=7x6HtfJdh03M6CCDgxCd:22
 a=wpfVPzegXHpEFt3DAXn9:22 a=r1p2_3pzAAAA:8 a=VabnemYjAAAA:8
 a=cHgMKt-ThCp0vrf1_T8A:9 a=QEXdDO2ut3YA:10 a=1zu1i0D7hVQfj8NKfPKu:22
 a=r_pkcD-q9-ctt7trBg_g:22 a=gKebqoRLp9LExxC7YDUY:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIzMDExNSBTYWx0ZWRfX9U4HOQijEEJD
 9v3BNXS3DkgGeq2tYVDMv8udUbWdfpUM0NB5SwXoRnwO7KueUuZHjDno71ix3Fsz0x2v7FKTBW9
 JPMubhGDY1J5t8p1eH2C8debdOfGMUgIOlO91yn9UfXdXpgAkHYzjs+Rc/ZYCG/j+8wzIKpR0CZ
 UwBHeUVpQuCcswpskj7U2nYCR5AwNUKLacK8HISpN9YQjvypVqh1ccVjvlXNJNmmnXJaQl6UkK1
 NmZgPx817IgSv/NKuUlmennWpwizzm8udlVG3JIILGsR8tpXjmwKY1mpuPX8wtfffxX/dQkCxSe
 v4ajO+s38Z3ZmDt869AZ3zarPZqmUtNfEWldRv7VuyKUmjsgNiMa845kK8S/UNr/QeJZR/jYTeF
 J804/tRqY/GAFiCXqVfIhA0DSKrQNNuIo3mJjqSaGjw+BmRGKJVMnsNdYBOpRejecxFPKPtXy/B
 ajznHibsrUFFi+XAzcA==
X-Proofpoint-GUID: bzk7t6qKB4GDFH_4k-JUOrydWYbGhsa9
X-Proofpoint-ORIG-GUID: bzk7t6qKB4GDFH_4k-JUOrydWYbGhsa9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-23_04,2026-03-23_01,2025-10-01_01
X-Spamd-Bar: -----
X-MailFrom: prvs=15427aea8c=mattev@meta.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: PMEIFYKXFFUOWJORGWPVXF5CG3CEUHN5
X-Message-ID-Hash: PMEIFYKXFFUOWJORGWPVXF5CG3CEUHN5
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:25:24 +0000
CC: Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 PATCH 04/10] vfio/pci: Add a helper to create a DMABUF for a BAR-map VMA
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PMEIFYKXFFUOWJORGWPVXF5CG3CEUHN5/>
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
	DATE_IN_PAST(1.00)[674];
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
	NEURAL_HAM(-0.00)[-0.749];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linaro.org:email,shazbot.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: E7F34431302
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SGkgQWxleCwNCg0KT24gV2VkLCBNYXIgMTgsIDIwMjYgYXQgODowNOKAr1BNIEFsZXggV2lsbGlh
bXNvbiA8YWxleEBzaGF6Ym90Lm9yZz4gd3JvdGU6DQo+IE9uIFRodSwgMTIgTWFyIDIwMjYgMTE6
NDY6MDIgLTA3MDANCj4gTWF0dCBFdmFucyA8bWF0dGV2QG1ldGEuY29tPiB3cm90ZToNCj4NCj4g
PiBUaGlzIGhlbHBlciwgdmZpb19wY2lfY29yZV9tbWFwX3ByZXBfZG1hYnVmKCksIGNyZWF0ZXMg
YSBzaW5nbGUtcmFuZ2UNCj4gPiBETUFCVUYgZm9yIHRoZSBwdXJwb3NlIG9mIG1hcHBpbmcgYSBQ
Q0kgQkFSLiAgVGhpcyBpcyB1c2VkIGluIGEgZnV0dXJlDQo+ID4gY29tbWl0IGJ5IFZGSU8ncyBv
cmRpbmFyeSBtbWFwKCkgcGF0aC4NCj4gPg0KPiA+IFRoaXMgZnVuY3Rpb24gdHJhbnNmZXJzIG93
bmVyc2hpcCBvZiB0aGUgVkZJTyBkZXZpY2UgZmQgdG8gdGhlDQo+ID4gRE1BQlVGLCB3aGljaCBm
cHV0KClzIHdoZW4gaXQncyByZWxlYXNlZC4NCj4gPg0KPiA+IFJlZmFjdG9yIHRoZSBleGlzdGlu
ZyB2ZmlvX3BjaV9jb3JlX2ZlYXR1cmVfZG1hX2J1ZigpIHRvIHNwbGl0IG91dA0KPiA+IGV4cG9y
dCBjb2RlIGNvbW1vbiB0byB0aGUgdHdvIHBhdGhzLCBWRklPX0RFVklDRV9GRUFUVVJFX0RNQV9C
VUYgYW5kDQo+ID4gdGhpcyBuZXcgVkZJT19CQVIgbW1hcCgpLg0KPiA+DQo+ID4gU2lnbmVkLW9m
Zi1ieTogTWF0dCBFdmFucyA8bWF0dGV2QG1ldGEuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJz
L3ZmaW8vcGNpL3ZmaW9fcGNpX2RtYWJ1Zi5jIHwgMTMxICsrKysrKysrKysrKysrKysrKysrKy0t
LS0tLS0tDQo+ID4gIGRyaXZlcnMvdmZpby9wY2kvdmZpb19wY2lfcHJpdi5oICAgfCAgIDQgKw0K
PiA+ICAyIGZpbGVzIGNoYW5nZWQsIDEwMiBpbnNlcnRpb25zKCspLCAzMyBkZWxldGlvbnMoLSkN
Cj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3ZmaW8vcGNpL3ZmaW9fcGNpX2RtYWJ1Zi5j
IGIvZHJpdmVycy92ZmlvL3BjaS92ZmlvX3BjaV9kbWFidWYuYw0KPiA+IGluZGV4IDYzMTQwNTI4
ZGJlYS4uNzZkYjM0MGJhNTkyIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvdmZpby9wY2kvdmZp
b19wY2lfZG1hYnVmLmMNCj4gPiArKysgYi9kcml2ZXJzL3ZmaW8vcGNpL3ZmaW9fcGNpX2RtYWJ1
Zi5jDQo+ID4gQEAgLTgyLDYgKzgyLDggQEAgc3RhdGljIHZvaWQgdmZpb19wY2lfZG1hX2J1Zl9y
ZWxlYXNlKHN0cnVjdCBkbWFfYnVmICpkbWFidWYpDQo+ID4gICAgICAgICAgICAgICB1cF93cml0
ZSgmcHJpdi0+dmRldi0+bWVtb3J5X2xvY2spOw0KPiA+ICAgICAgICAgICAgICAgdmZpb19kZXZp
Y2VfcHV0X3JlZ2lzdHJhdGlvbigmcHJpdi0+dmRldi0+dmRldik7DQo+ID4gICAgICAgfQ0KPiA+
ICsgICAgIGlmIChwcml2LT52ZmlsZSkNCj4gPiArICAgICAgICAgICAgIGZwdXQocHJpdi0+dmZp
bGUpOw0KPiA+ICAgICAgIGtmcmVlKHByaXYtPnBoeXNfdmVjKTsNCj4gPiAgICAgICBrZnJlZShw
cml2KTsNCj4gPiAgfQ0KPiA+IEBAIC0xODIsNiArMTg0LDQxIEBAIGludCB2ZmlvX3BjaV9kbWFf
YnVmX2ZpbmRfcGZuKHN0cnVjdCB2ZmlvX3BjaV9kbWFfYnVmICp2cGRtYWJ1ZiwNCj4gPiAgICAg
ICByZXR1cm4gLUVGQVVMVDsNCj4gPiAgfQ0KPiA+DQo+ID4gK3N0YXRpYyBpbnQgdmZpb19wY2lf
ZG1hYnVmX2V4cG9ydChzdHJ1Y3QgdmZpb19wY2lfY29yZV9kZXZpY2UgKnZkZXYsDQo+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgdmZpb19wY2lfZG1hX2J1ZiAqcHJp
diwgdWludDMyX3QgZmxhZ3MsDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBz
aXplX3Qgc2l6ZSwgYm9vbCBzdGF0dXNfb2spDQo+ID4gK3sNCj4gPiArICAgICBERUZJTkVfRE1B
X0JVRl9FWFBPUlRfSU5GTyhleHBfaW5mbyk7DQo+ID4gKw0KPiA+ICsgICAgIGlmICghdmZpb19k
ZXZpY2VfdHJ5X2dldF9yZWdpc3RyYXRpb24oJnZkZXYtPnZkZXYpKQ0KPiA+ICsgICAgICAgICAg
ICAgcmV0dXJuIC1FTk9ERVY7DQo+ID4gKw0KPiA+ICsgICAgIGV4cF9pbmZvLm9wcyA9ICZ2Zmlv
X3BjaV9kbWFidWZfb3BzOw0KPiA+ICsgICAgIGV4cF9pbmZvLnNpemUgPSBzaXplOw0KPiA+ICsg
ICAgIGV4cF9pbmZvLmZsYWdzID0gZmxhZ3M7DQo+ID4gKyAgICAgZXhwX2luZm8ucHJpdiA9IHBy
aXY7DQo+ID4gKw0KPiA+ICsgICAgIHByaXYtPmRtYWJ1ZiA9IGRtYV9idWZfZXhwb3J0KCZleHBf
aW5mbyk7DQo+ID4gKyAgICAgaWYgKElTX0VSUihwcml2LT5kbWFidWYpKSB7DQo+ID4gKyAgICAg
ICAgICAgICB2ZmlvX2RldmljZV9wdXRfcmVnaXN0cmF0aW9uKCZ2ZGV2LT52ZGV2KTsNCj4gPiAr
ICAgICAgICAgICAgIHJldHVybiBQVFJfRVJSKHByaXYtPmRtYWJ1Zik7DQo+ID4gKyAgICAgfQ0K
PiA+ICsNCj4gPiArICAgICBrcmVmX2luaXQoJnByaXYtPmtyZWYpOw0KPiA+ICsgICAgIGluaXRf
Y29tcGxldGlvbigmcHJpdi0+Y29tcCk7DQo+ID4gKw0KPiA+ICsgICAgIC8qIGRtYV9idWZfcHV0
KCkgbm93IGZyZWVzIHByaXYgKi8NCj4gPiArICAgICBJTklUX0xJU1RfSEVBRCgmcHJpdi0+ZG1h
YnVmc19lbG0pOw0KPiA+ICsgICAgIGRvd25fd3JpdGUoJnZkZXYtPm1lbW9yeV9sb2NrKTsNCj4g
PiArICAgICBkbWFfcmVzdl9sb2NrKHByaXYtPmRtYWJ1Zi0+cmVzdiwgTlVMTCk7DQo+ID4gKyAg
ICAgcHJpdi0+cmV2b2tlZCA9ICFzdGF0dXNfb2s7DQo+DQo+IFRlc3RpbmcgX192ZmlvX3BjaV9t
ZW1vcnlfZW5hYmxlZCgpIG91dHNpZGUgb2YgbWVtb3J5X2xvY2soKSBpcw0KPiBpbnZhbGlkLCBz
byBwYXNzaW5nIGl0IGFzIGEgcGFyYW1ldGVyIG91dHNpZGUgb2YgdGhlIHNlbWFwaG9yZSBpcw0K
PiBpbnZhbGlkLiAgQHN0YXR1c19vayBpcyBzdGFsZSBoZXJlLg0KDQpTbyBpdCBpcywgYXJycnJy
Z2guICBUaGFuayB5b3UgZm9yIHRoYXQ7IEkndmUgZm91bmQgYSBjb3VwbGUgb2Ygb3RoZXINCmNo
b2ljZSBidWdzIGluIHRoYXQgUkZDLCBhbmQgd2lsbCByZXNvbHZlIGFsbCBvZiB0aGlzIGluIGEg
cmVwb3N0DQpzb29uLg0KDQpbc25pcF0NCj4gPiArDQo+ID4gKyAgICAgLyoNCj4gPiArICAgICAg
KiBUaGUgVk1BIGdldHMgdGhlIERNQUJVRiBmaWxlIHNvIHRoYXQgb3RoZXIgdXNlcnMgY2FuIGxv
Y2F0ZQ0KPiA+ICsgICAgICAqIHRoZSBETUFCVUYgdmlhIGEgVkEuICBPd25lcnNoaXAgb2YgdGhl
IG9yaWdpbmFsIFZGSU8gZGV2aWNlDQo+ID4gKyAgICAgICogZmlsZSBiZWluZyBtbWFwKCllZCB0
cmFuc2ZlcnMgdG8gcHJpdiwgYW5kIGlzIHB1dCB3aGVuIHRoZQ0KPiA+ICsgICAgICAqIERNQUJV
RiBpcyByZWxlYXNlZC4NCj4gPiArICAgICAgKi8NCj4gPiArICAgICBwcml2LT52ZmlsZSA9IHZt
YS0+dm1fZmlsZTsNCj4gPiArICAgICB2bWEtPnZtX2ZpbGUgPSBwcml2LT5kbWFidWYtPmZpbGU7
DQo+DQo+IEFJVUksIHRoaXMgYWZmZWN0cyB3aGF0IHRoZSB1c2VyIHNlZXMgaW4gL3Byb2MvPHBp
ZD4vbWFwcywgcmlnaHQ/DQo+IFByZXZpb3VzbHkgYSBtZW1vcnkgcmFuZ2UgY291bGQgYmUgY2xl
YXJseSBhc3NvY2lhdGVkIHdpdGggYSBzcGVjaWZpYw0KPiB2ZmlvIGRldmljZSwgbm93LCBvbmx5
IGZvciB2ZmlvLXBjaSBkZXZpY2VzLCBJIHRoaW5rIHRoZSByYW5nZSBpcw0KPiBhc3NvY2lhdGVk
IHRvIGEgbm9uZGVzY3JpcHQgZG1hYnVmLiAgSWYgc28sIGlzIHRoYXQgYW4gYWNjZXB0YWJsZSwg
dXNlcg0KPiB2aXNpYmxlLCBkZWJ1Z2dpbmcgZnJpZW5kbHkgY2hhbmdlIChleC4gbHNvZik/ICBU
aGFua3MsDQoNCihKYXNvbiwgeW91ciBjb21tZW50IG5vdGVkIHdpdGggdGhhbmtzLCByZXBseWlu
ZyB0byB5b3UgYm90aCBoZXJlIHRvDQpzYXZlIGVsZWN0cm9ucy4pDQoNCkdyZWF0IHF1ZXN0aW9u
OyBhIGZvcm1hdHRpbmcgY2hhbmdlIHRoZXJlIGlzIGluaGVyZW50IHRvIG1vdmluZyB0byBhDQpE
TUFCVUYgKHdoaWNoIGdlbmVyYXRlcyBhICIvZG1hYnVmOiIgcHJlZml4IHRvIGEgdXNlci1kZWZp
bmVkIG5hbWUpLg0KSWYgd2UgY2FuIGFjY2VwdCB0aGF0IGl0IGNoYW5nZXMgYXQgYWxsLCB0aGVu
IEkgYWdyZWUgdGhpcyB0aGVuIHNob3VsZA0Kb3V0cHV0IG5pY2UgZGVidWc6IGF0IGxlYXN0IHRo
ZSBjZGV2IG5hbWUgYW5kIHJlc291cmNlIGluZGV4LCBhbmQNCndlJ3ZlIHRoZSBvcHBvcnR1bml0
eSB0byBpbmNsdWRlIHRoZSBCREYgdG9vLiAgSSd2ZSBhZGRlZCB0aGlzOyBhbg0KZXhhbXBsZSBs
aW5lIG9mIC9wcm9jLzxwaWQ+L21hcHM6DQoNCiAgICBmZmZmYjgwNzAwMDAtZmZmZmJjMDQwMDAw
IHJ3LXMgMDAwMzAwMDAgMDA6MGIgNQ0KICAgICAgL2RtYWJ1Zjp2ZmlvMDowMDAwOjAwOjAzLjAv
MQ0KDQpOb3RlIHRoZSBmaWxlIG9mZnNldCB1c2VkIHRvIGluY2x1ZGUgdGhlIHJlc291cmNlIGlu
ZGV4IHVwIGF0DQpWRklPX1BDSV9PRkZTRVRfU0hJRlQgYnV0IHRoaXMgRE1BQlVGIHZlcnNpb24g
ZG9lc24ndCBkbyB0aGF0LCBzbyBJJ20NCnByb3Bvc2luZyBhcHBlbmRpbmcgYSAiLyV1IiBmb3Ig
dGhlIGluZGV4LiAgQWJvdmUgaXMgYSBtYXAgb2YgQkFSMSwNCm9mZnNldCAweDMwMDAwLiAgSWYg
cGVvcGxlIGZlZWwgc3Ryb25nbHkgYWJvdXQgdGhlIGV4aXN0aW5nIGFlc3RoZXRpYw0KdGhlbiB3
ZSBjb3VsZCBrZWVwIHRoZSBpbmRleCBlbmNvZGVkIGluIHZtX3Bnb2ZmIHRvIHJldGFpbiB0aGUg
c2FtZQ0Kb2Zmc2V0IGZpZWxkIGluIC9wcm9jLzxwaWQ+L21hcHMsIGJ1dCBpdCdkIGJlIGxlc3Mg
bmVhdCBtYXNraW5nIGl0DQpiYWNrIG91dCBpbiBhIGZldyBwbGFjZXMuDQoNClRoZSBkZWZhdWx0
IG5hbWUgb2YgYSBETUFCVUYgYWNxdWlyZWQgdGhyb3VnaA0KVkZJT19ERVZJQ0VfRkVBVFVSRV9E
TUFfQlVGIHdvdWxkIHN0aWxsIGJlICIvZG1hYnVmOiIgYW5kIEkgdGhpbmsgaXQNCnNob3VsZCBz
dGF5IHRoaXMgd2F5IHNpbmNlIGEgYmV0dGVyIG5hbWUgc2hvdWxkIGJlIHN1cHBsaWVkIGJ5DQp1
c2Vyc3BhY2UuICBUaGUgZGVmYXVsdCBhdCBsZWFzdCBkaWZmZXJlbnRpYXRlcyB0aGVtIGZyb20g
VkZJTyBkZXZpY2UNCmZkIG1hcHBpbmdzLg0KDQpNYW55IHRoYW5rcywNCg0KDQpNYXR0DQoNCg0K
Pg0KPiBBbGV4DQo+DQo+ID4gKyAgICAgdm1hLT52bV9wcml2YXRlX2RhdGEgPSBwcml2Ow0KPiA+
ICsNCj4gPiArICAgICByZXR1cm4gMDsNCj4gPiArDQo+ID4gK2Vycl9mcmVlX3BoeXM6DQo+ID4g
KyAgICAga2ZyZWUocHJpdi0+cGh5c192ZWMpOw0KPiA+ICtlcnJfZnJlZV9wcml2Og0KPiA+ICsg
ICAgIGtmcmVlKHByaXYpOw0KPiA+ICsgICAgIHJldHVybiByZXQ7DQo+ID4gK30NCj4gPiArDQo+
ID4gIHZvaWQgdmZpb19wY2lfZG1hX2J1Zl9tb3ZlKHN0cnVjdCB2ZmlvX3BjaV9jb3JlX2Rldmlj
ZSAqdmRldiwgYm9vbCByZXZva2VkKQ0KPiA+ICB7DQo+ID4gICAgICAgc3RydWN0IHZmaW9fcGNp
X2RtYV9idWYgKnByaXY7DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdmZpby9wY2kvdmZpb19w
Y2lfcHJpdi5oIGIvZHJpdmVycy92ZmlvL3BjaS92ZmlvX3BjaV9wcml2LmgNCj4gPiBpbmRleCA1
Y2M4Yzg1YTIxNTMuLjVmZDNhNmUwMGEwZSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL3ZmaW8v
cGNpL3ZmaW9fcGNpX3ByaXYuaA0KPiA+ICsrKyBiL2RyaXZlcnMvdmZpby9wY2kvdmZpb19wY2lf
cHJpdi5oDQo+ID4gQEAgLTMwLDYgKzMwLDcgQEAgc3RydWN0IHZmaW9fcGNpX2RtYV9idWYgew0K
PiA+ICAgICAgIHNpemVfdCBzaXplOw0KPiA+ICAgICAgIHN0cnVjdCBwaHlzX3ZlYyAqcGh5c192
ZWM7DQo+ID4gICAgICAgc3RydWN0IHAycGRtYV9wcm92aWRlciAqcHJvdmlkZXI7DQo+ID4gKyAg
ICAgc3RydWN0IGZpbGUgKnZmaWxlOw0KPiA+ICAgICAgIHUzMiBucl9yYW5nZXM7DQo+ID4gICAg
ICAgc3RydWN0IGtyZWYga3JlZjsNCj4gPiAgICAgICBzdHJ1Y3QgY29tcGxldGlvbiBjb21wOw0K
PiA+IEBAIC0xMjgsNiArMTI5LDkgQEAgaW50IHZmaW9fcGNpX2RtYV9idWZfZmluZF9wZm4oc3Ry
dWN0IHZmaW9fcGNpX2RtYV9idWYgKnZwZG1hYnVmLA0KPiA+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICB1bnNpZ25lZCBsb25nIGFkZHJlc3MsDQo+ID4gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHVuc2lnbmVkIGludCBvcmRlciwNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgdW5zaWduZWQgbG9uZyAqb3V0X3Bmbik7DQo+ID4gK2ludCB2ZmlvX3BjaV9jb3JlX21tYXBf
cHJlcF9kbWFidWYoc3RydWN0IHZmaW9fcGNpX2NvcmVfZGV2aWNlICp2ZGV2LA0KPiA+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hLA0K
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHU2NCBwaHlzX3N0YXJ0LCB1NjQg
cGdvZmYsIHU2NCByZXFfbGVuKTsNCj4gPg0KPiA+ICAjaWZkZWYgQ09ORklHX1ZGSU9fUENJX0RN
QUJVRg0KPiA+ICBpbnQgdmZpb19wY2lfY29yZV9mZWF0dXJlX2RtYV9idWYoc3RydWN0IHZmaW9f
cGNpX2NvcmVfZGV2aWNlICp2ZGV2LCB1MzIgZmxhZ3MsDQo+DQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAt
LSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

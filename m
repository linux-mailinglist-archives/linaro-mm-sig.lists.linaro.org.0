Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oN1YOPLdxmkoPQUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Mar 2026 20:43:46 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B4934A538
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Mar 2026 20:43:46 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 574A1401E8
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Mar 2026 19:43:45 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	by lists.linaro.org (Postfix) with ESMTPS id 0BCDC402EF
	for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Mar 2026 19:43:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20251104 header.b=pS0BWFUu;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.41 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	arc=pass ("google.com:s=arc-20240605:i=1")
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4852ef20fe8so2665e9.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Mar 2026 12:43:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774640621; cv=none;
        d=google.com; s=arc-20240605;
        b=hk+O1A98c4UngV09EhPOSRXFjOfQz4VZmu1+Ze4E+aLNFBCGDod1LEHQgb1r+YGKp2
         PKi8sMaFXwjENictpm7eJyrm28y2appkf0ZgbeOXoRCdFPfUpimLMQ9Cvoet2+ZQDiuD
         cM+VJwzziv1dHbVNXa4zIKFXAZ2L51eClljbL+/MCAkTrAuKjiibtG6EQGe4bcmOA8St
         cnsPGJVqAZjdYl4HU8RvW82sVoYPEZaT4Zuhkth5JQyUelf+D9YjfLVQC6JHshPzUF52
         RRRii5WOMfh53Dgaajh6BpkmkyQfdprGqoDY8wTNQZovdfWH9JeW5KLi6+k/C51gGunz
         STUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=bp8Rzg51lEDwzJFZ6phUlxNkzebzC2DJpAPYxDIaxlM=;
        fh=AvL1nrwj4bwSl2oj3/o7807+wKqy0l2AWWT4hsVEumw=;
        b=hZgJyN/iacRgZJe7MTvSh8hoZWX5RuPGDmOBwsgm7poHTfrVc/mI+IspMubscVItpW
         +emQdYKF/K/cBsPGhxGfyDtgybAwwQfcwezGZmN7vrtLH5spy172WqHPzOeDaF/YdVIY
         qEeLvzGvx4Ytf2OE8GJjMTNl5McVHqXSRCal9MXrJjrHNzT+nBPgizqjjtNLj6beo5qY
         c4nrrfPO1FhuX1FvKbi3p3B+gy6DMIBCyaOmVYo4KI7jTpNXer5NIsqLje4g0aifeJwa
         Ge7RLFSR0jBRAJ29pt37G7T81ISeKBNeUDiouO+G9hNQ48rgEHHRJpcs5xiQBYCZXJqR
         J9hQ==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1774640621; x=1775245421; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bp8Rzg51lEDwzJFZ6phUlxNkzebzC2DJpAPYxDIaxlM=;
        b=pS0BWFUu62qlX188nxVfrFUi9vghu9nE849peHCPQeqYvg91P+V4AG0Kriaj+yti7P
         IvpKb+Uu3VCxtnPvf2/Kjn6gRC7aS1u64IaCYh0ElLClnmI91VQgeCBF4V3oYHe2dRDa
         6cyPvlrMyS2BS0l15H9ByKbqPQzsFbYXxxZaXiy4vd7hhq7nW94K8rTNDdDxAIPdih9b
         emF4pjsw8hIWwod/LMX9/KH2tNvkNivXNSadpnWtDC9jlaluml841AadgLvnCgDRi8Pv
         60PoMLUsUkINVJn1kMYRvLwdsNE2rTiLQ29siNoHMizUBwAgteT36rxbjyCefDUgh6A2
         5y7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774640621; x=1775245421;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bp8Rzg51lEDwzJFZ6phUlxNkzebzC2DJpAPYxDIaxlM=;
        b=TgewQ1dJDYhg1+bL0JwWVbi3tj5uIlFgbI/sVclpnTAUP1wYGhlGahQOqtIs2WXoZe
         MBYPW+7GCWb5TY/q/N2TO8u6RKm+Bd0Yobba4KswnYhKxQYEusCnCkC9+qOPXZAQedG7
         hi9J71UDg+fZ6+inQ26ZD+VyDF8cwS9Wgpf1M2galmj6nSFc0v/1eRx1/bZBuNxa7Ndc
         /s7MLdAhTHNkFEb483qAQZhOeMqfe5xbSTLLLNBsYY/i/D3tHZ7Kgq2y6xm9B0teJkdW
         t+PXM/j7BG2rugeFt3Cm4G7ptW22HwnjNNRM0elLTQ2cyBXlmGD1DXBc9KdC+ZBN5p38
         YyPA==
X-Forwarded-Encrypted: i=1; AJvYcCWrEsO8mE3kmS9yGcGVYOCAr1UDiE5deLoI4Q9QdvGhY8xn72Y2BgqT11vxmQJIvud4nH8+1B8fn/ttE9RM@lists.linaro.org
X-Gm-Message-State: AOJu0Yz3hnVeVCNkvyDv4aGOJpZRMERY00t073Nurco+WKUhtLhpYvDD
	JHsoZZm9H8Uwnaz6bA21aaibTTc6rFbCP/gJ38OK0oo/rcLP0pCP+2mUQPXv9ICsb2VFhvBDFRV
	Vbh3Znq2wLI9XjGgMNlUCT1uLCnYwMG8lnLl6iYH6
X-Gm-Gg: ATEYQzzYRNj+d7EffFKic1C2LQUt85zphTGFUnZAVWL52O5CsqVhR4yh4boR8SGhHUi
	QYaMnrdjfXoS3aPXQumRsRFAVr0WiR89XO2INmY0RzhrW7EIEg5NlXYF+2aATmGlOoaVmC4cPdW
	VveTrrDpNAPU6UKVGi5wrXbacoE2riFhEJUixrYki+4wVxncbcI14uGlpyuvlogOhFmE4/wTy/l
	zvTcyDsJ0BS3EjGPYlgq1h5ENq59IVYi6t4msKgBvEl3eMuQTTShaWTmVG07buYqx5NxDtgqjHs
	S/32DArMZIJBx6WISDkVQaonYKxXODOIgpL85IpozkgS8UikAh8lN1lrEyxjdqiUV99M
X-Received: by 2002:a05:600c:474a:b0:47e:de1d:ce99 with SMTP id
 5b1f17b1804b1-4872fb2db92mr169905e9.12.1774640620548; Fri, 27 Mar 2026
 12:43:40 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20260325192400eucas1p2ae38ff4c2b3ab35a7047cfd680d9fda3@eucas1p2.samsung.com>
 <20260325192352.437608-1-jiri@resnulli.us> <f2047cd7-91a8-4f6a-b6b9-0e4f143f6854@samsung.com>
 <20260327121021.GB246076@ziepe.ca>
In-Reply-To: <20260327121021.GB246076@ziepe.ca>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Fri, 27 Mar 2026 12:43:28 -0700
X-Gm-Features: AQROBzCEcKgPP9gV3lvkFItmqoWSRLzeH8nf-BLcIkZAnZ3bjMQA_OWXnQtSUH4
Message-ID: <CABdmKX0HYg_HQAb44QGcO-frCTu+0h=uqS70CTcYtRs-Y=y21g@mail.gmail.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
X-Spamd-Bar: ----
Message-ID-Hash: Z46WNK5GXVGFYEJWDECYXQGX5LBUXIYU
X-Message-ID-Hash: Z46WNK5GXVGFYEJWDECYXQGX5LBUXIYU
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jiri Pirko <jiri@resnulli.us>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, christian.koenig@amd.com, robin.murphy@arm.com, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 0/2] dma-buf: heaps: system: add an option to allocate explicitly shared/decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Z46WNK5GXVGFYEJWDECYXQGX5LBUXIYU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[24];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[google.com:-];
	NEURAL_HAM(-0.00)[-0.989];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,ziepe.ca:email,nvidia.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 50B4934A538
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gRnJpLCBNYXIgMjcsIDIwMjYgYXQgNToxMOKAr0FNIEphc29uIEd1bnRob3JwZSA8amdnQHpp
ZXBlLmNhPiB3cm90ZToNCj4NCj4gT24gRnJpLCBNYXIgMjcsIDIwMjYgYXQgMTA6Mzg6MTBBTSAr
MDEwMCwgTWFyZWsgU3p5cHJvd3NraSB3cm90ZToNCj4gPiBPbiAyNS4wMy4yMDI2IDIwOjIzLCBK
aXJpIFBpcmtvIHdyb3RlOg0KPiA+ID4gRnJvbTogSmlyaSBQaXJrbyA8amlyaUBudmlkaWEuY29t
Pg0KPiA+ID4NCj4gPiA+IENvbmZpZGVudGlhbCBjb21wdXRpbmcgKENvQ28pIFZNcy9ndWVzdHMs
IHN1Y2ggYXMgQU1EIFNFViBhbmQgSW50ZWwgVERYLA0KPiA+ID4gcnVuIHdpdGggcHJpdmF0ZS9l
bmNyeXB0ZWQgbWVtb3J5IHdoaWNoIGNyZWF0ZXMgYSBjaGFsbGVuZ2UNCj4gPiA+IGZvciBkZXZp
Y2VzIHRoYXQgZG8gbm90IHN1cHBvcnQgRE1BIHRvIGl0IChubyBURElTUCBzdXBwb3J0KS4NCj4g
PiA+DQo+ID4gPiBGb3Iga2VybmVsLW9ubHkgRE1BIG9wZXJhdGlvbnMsIHN3aW90bGIgYm91bmNl
IGJ1ZmZlcmluZyBwcm92aWRlcyBhDQo+ID4gPiB0cmFuc3BhcmVudCBzb2x1dGlvbiBieSBjb3B5
aW5nIGRhdGEgdGhyb3VnaCBzaGFyZWQgbWVtb3J5Lg0KPiA+ID4gSG93ZXZlciwgdGhlIG9ubHkg
d2F5IHRvIGdldCB0aGlzIG1lbW9yeSBpbnRvIHVzZXJzcGFjZSBpcyB2aWEgdGhlIERNQQ0KPiA+
ID4gQVBJJ3MgZG1hX2FsbG9jX3BhZ2VzKCkvZG1hX21tYXBfcGFnZXMoKSB0eXBlIGludGVyZmFj
ZXMgd2hpY2ggbGltaXRzDQo+ID4gPiB0aGUgdXNlIG9mIHRoZSBtZW1vcnkgdG8gYSBzaW5nbGUg
RE1BIGRldmljZSwgYW5kIGlzIGluY29tcGF0aWJsZSB3aXRoDQo+ID4gPiBwaW5fdXNlcl9wYWdl
cygpLg0KPiA+ID4NCj4gPiA+IFRoZXNlIGxpbWl0YXRpb25zIGFyZSBwYXJ0aWN1bGFybHkgcHJv
YmxlbWF0aWMgZm9yIHRoZSBSRE1BIHN1YnN5c3RlbQ0KPiA+ID4gd2hpY2ggbWFrZXMgaGVhdnkg
dXNlIG9mIHBpbl91c2VyX3BhZ2VzKCkgYW5kIGV4cGVjdHMgZmxleGlibGUgbWVtb3J5DQo+ID4g
PiB1c2FnZSBiZXR3ZWVuIG1hbnkgZGlmZmVyZW50IERNQSBkZXZpY2VzLg0KPiA+ID4NCj4gPiA+
IFRoaXMgcGF0Y2ggc2VyaWVzIGVuYWJsZXMgdXNlcnNwYWNlIHRvIGV4cGxpY2l0bHkgcmVxdWVz
dCBzaGFyZWQNCj4gPiA+IChkZWNyeXB0ZWQpIG1lbW9yeSBhbGxvY2F0aW9ucyBmcm9tIG5ldyBk
bWEtYnVmIHN5c3RlbV9jY19zaGFyZWQgaGVhcC4NCj4gPiA+IFVzZXJzcGFjZSBjYW4gbW1hcCB0
aGlzIG1lbW9yeSBhbmQgcGFzcyB0aGUgZG1hLWJ1ZiBmZCB0byBvdGhlcg0KPiA+ID4gZXhpc3Rp
bmcgaW1wb3J0ZXJzIHN1Y2ggYXMgUkRNQSBvciBEUk0gZGV2aWNlcyB0byBhY2Nlc3MgdGhlDQo+
ID4gPiBtZW1vcnkuIFRoZSBETUEgQVBJIGlzIGltcHJvdmVkIHRvIGFsbG93IHRoZSBkbWEgaGVh
cCBleHBvcnRlciB0byBETUENCj4gPiA+IG1hcCB0aGUgc2hhcmVkIG1lbW9yeSB0byBlYWNoIGlt
cG9ydGluZyBkZXZpY2UuDQo+ID4gPg0KPiA+ID4gQmFzZWQgb24gZG1hLW1hcHBpbmctZm9yLW5l
eHQgZTc0NDJhNjhjZDFlZTc5N2I1ODVmMDQ1ZDM0ODc4MWU5YzBkZGUwZA0KPiA+DQo+ID4gSSB3
b3VsZCBsaWtlIHRvIG1lcmdlIHRoaXMgdG8gZG1hLW1hcHBpbmctbmV4dCwgYnV0IEkgZmVlbCBh
IGJpdA0KPiA+IHVuY29tZm9ydGFibGUgd2l0aCBteSBsYWNrIG9mIGtub3dsZWRnZSBhYm91dCBD
b0NvIGFuZCBmcmllbmRzLiBDb3VsZA0KPiA+IHRob3NlIHdobyBrbm93IGEgYml0IG1vcmUgYWJv
dXQgaXQgcHJvdmlkZSBzb21lIFJldmlld2VkLWJ5IHRhZ3M/DQo+DQo+IEknbSBjb25maWRlbnQg
aW4gdGhlIENDIHN0dWZmLCBJIHdhcyBob3BpbmcgdG8gc2VlIHNvbWVvbmUgZnJvbSBkbWFidWYN
Cj4gaGVhcCBsYW5kIGFjayB0aGF0IHRoZSB1QVBJIGRlc2lnbiBpcyBPSy4uIFRKPw0KPg0KPiBK
YXNvbg0KDQpIaSwgeWVzIExHVE0uIEZyb20gYSB1QVBJIHBlcnNwZWN0aXZlIGl0J3MganVzdCBh
bm90aGVyIGRtYS1idWYgaGVhcC4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=

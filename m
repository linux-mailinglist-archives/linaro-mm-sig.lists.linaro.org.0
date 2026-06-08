Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id knAoHx0QJ2odrAIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 08 Jun 2026 20:55:25 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC03659E5B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 08 Jun 2026 20:55:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=google.com header.s=20251104 header.b=rYk6fY5n;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=google.com (policy=reject);
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 153CD409E3
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  8 Jun 2026 18:55:24 +0000 (UTC)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	by lists.linaro.org (Postfix) with ESMTPS id 32A59402F1
	for <linaro-mm-sig@lists.linaro.org>; Mon,  8 Jun 2026 18:55:14 +0000 (UTC)
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-5aa64afcfdfso20255e87.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 08 Jun 2026 11:55:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780944913; cv=none;
        d=google.com; s=arc-20240605;
        b=a4lY1HMdLegprG4A5EcxEVN86r/i7HA+wUUj/Uz2wtCVuYg/fMnNzkFaxbA83LtmLV
         HuQwSjC6JLqIPzlkDJLZAtarlQQVhdUrSbvA+B9c5IL+uZr6BcuBkQPWK6OuD3mEsbb1
         NogiRasF0yEhbLe93BfgRsDk/x2xmZDLYFFkJrrT7ev/DK5d+618XLXG6MI53N7vx7ti
         uWGDBre4RXbSXYPWxtin5ItjxCqyLGCdI5TlqwaZaUBtbNEIpcfZw6k6AGW1XTDiFPhx
         DNqrOPXEjEtA5U/Yuap1V+vVvmh/6yxO29qmYflWLIUP4e5BnPIzf3eXT4kNECaKrJp+
         LVAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Dw+WR3kgPsmomU5BDy/wi1DbnucrDq50YuLE+lo/Shg=;
        fh=Lyc1YPEitxN5uMB7/a8ClWXWmlxrYo7rXVBnXlhLBic=;
        b=beIQGlC5tXeVjIjX0Vw8trugMLMDVkG7F7kOWEekzk4mhs49sjWSjj2FxlFteaBOwf
         NuDB0OrXqPW6xZ9xnzT0dMFT1+D++53wCqT6VhhZyl1COpPoFD2VcEhHFLE+e9j7qwQ8
         hCg71z9+XJAfkaG9B3Qr9xkJQPiFC0DK9Ob8z+evPhrUdSeoPaHD1Z5QjZsnpQrtNsrI
         oUb85m0syOk+cGHX5sAblgpNAToGczgXZq5Neq1/xZLtJIGj7u1V/akN/0pACTDtqTT3
         A+WWTA/6f8Y6UhP8NrhNA4FFhSubcukiG33eCd7NHrHbc2rqi7T9HkKZJyEJ7eHrfpDY
         TF2w==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1780944913; x=1781549713; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Dw+WR3kgPsmomU5BDy/wi1DbnucrDq50YuLE+lo/Shg=;
        b=rYk6fY5n6qyGEfDhYD0rdFUC6fwvqcwZWLE5SwLDOBsHe6CizZ+2DkpTc3dQHww/E4
         bGA26iG3Ye2D8lyQeqMZDn+kH3vmULdrXpcTlJL2mbjE2VDod6yMyQTgb0Fa2FukekIT
         iGQSiFGdLa8PN/8s1CxYdie4AYyTw9HOTX/NhF8417NPVQ7HMt02S92nJhNM9tu12Izv
         zbr+qw2UQ6knxh7ly+lcKc+xXqi1QCrMtSjtLRIPM1H/pK/AYVP3nuaVAy2InBHknRDV
         hWUbqn1Q8g+y81l5wix9v/Z41PtopNR8d7gvOYEl+mjadq/WIv2wmWcsHDL0qqDlwJyU
         AdhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780944913; x=1781549713;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Dw+WR3kgPsmomU5BDy/wi1DbnucrDq50YuLE+lo/Shg=;
        b=IwKuro+mfPXmVIbUxFeeIkZ5DlgD7i0LjrAsYKYDbc3LeAux8wgSOw9l+V3fx8jlJc
         BVFxeTwPM41izNCZdgiJzSsHQUKNx3SpkKleS0q/7dhVkp11q+Z/uYqOb/Z4R58phM2L
         LmerTbEda+0MN3zjnq8bZbROaNsSiIhEsnFkhZi1Ir6Vz/cPVC/dqIAvLQx1wtn1zMzS
         JgwZKFmeEU//cjjn89oGnEl2Ndhq4Ik6EAxJ87snvVh6L8qSMpdj85iwdjVR74NFBCRP
         T2ruIg5IzvoAj0Ywouau1uPjw0wlEee1ZLAmej4/OnMgj4QoakXlYNcW9saWjY1WRtJ2
         gaWQ==
X-Forwarded-Encrypted: i=1; AFNElJ/LloFgl4mUEBjmwMMEjh/tGDmLec9qHRRPG/2Pm6OP4ZwwhH9icy2S+14U2pTucN1g7eozGIgG2H7KlaWw@lists.linaro.org
X-Gm-Message-State: AOJu0YzLzF715zZHDs/moVgkjeqPfDlQKwUQeNg0oWOoLNdkap5lkM7T
	FLOF6Bid26KjM6PWp4dZngJ7uxm/NQDfrUENRGbLCAoXsvxsth5dWl4F0cRZ6++nVhIxLTC2U9N
	KlKa+5nDrkTHR2crmfdy4sASH8F/okVCyJqFUYOg=
X-Gm-Gg: Acq92OGxk/dGH7Fto4CZTa3LUOC04C4g/FStUXqZRiZgE6MUUncYJnlr7sRZvzawNHj
	+70xiE2dKKXga46JewxDHaOfu9NF4jMT3JGNuHYZ5Uzi7V//DZJxkeO40Hm5y9xamJM/+GIEO+C
	D+Y1ej2G97oSitQYee5I+mnT3A77hCqRViBojHjjL9r3WZvWGi/7K8PcRPUFQm5SJ3c6hnGEz97
	ugen3N6eEXF9V38EqPCL4sumVrVlf+UzJzu9ZIqBVRQIwf+SM/wuVIj5lRgYsf3f9eK0cF11s5D
	VY7dCTVuHuLO9DGtdqL0o+yMv0xh3YshV4b/3rbu8CFyJgNejeakIok=
X-Received: by 2002:a05:6512:3341:b0:5a1:274b:de2b with SMTP id
 2adb3069b0e04-5aa88640402mr537440e87.9.1780944912435; Mon, 08 Jun 2026
 11:55:12 -0700 (PDT)
MIME-Version: 1.0
References: <20260601200012.3872274-1-xuehaohu@google.com> <20260604094344.GB245424@unreal>
 <CAPd9Lg_JkRdtNa=n+HE9SP+NFCSB+X_97eiPBqiONVLwV0pHwQ@mail.gmail.com> <20260607080244.GA327369@unreal>
In-Reply-To: <20260607080244.GA327369@unreal>
From: David Hu <xuehaohu@google.com>
Date: Mon, 8 Jun 2026 14:54:59 -0400
X-Gm-Features: AVVi8CcrgIqNX---JRMNN-9SsXpCXMWpb_Y08c-v1_nrKhDd232Ciz6Ae661o0I
Message-ID: <CAPd9Lg94nGnn7HQPNiSS7w2QQjVAuJ_FkMggR=JfSGVJyAsgeg@mail.gmail.com>
To: Leon Romanovsky <leon@kernel.org>
X-Spamd-Bar: ----
Message-ID-Hash: PB44R6DORXPL4KXRH7RIEC4ICUHN4NM6
X-Message-ID-Hash: PB44R6DORXPL4KXRH7RIEC4ICUHN4NM6
X-MailFrom: xuehaohu@google.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Jason Gunthorpe <jgg@ziepe.ca>, Nicolin Chen <nicolinc@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, jmoroni@google.com, praan@google.com, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5] dma-buf: Fix silent overflow for phys vec to sgt
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PB44R6DORXPL4KXRH7RIEC4ICUHN4NM6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:leon@kernel.org,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:jgg@ziepe.ca,m:nicolinc@nvidia.com,m:kevin.tian@intel.com,m:ankita@nvidia.com,m:alex@shazbot.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:iommu@lists.linux.dev,m:jmoroni@google.com,m:praan@google.com,m:stable@vger.kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[xuehaohu@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[google.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xuehaohu@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,mail.gmail.com:mid,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0CC03659E5B

T24gU3VuLCBKdW4gNywgMjAyNiBhdCA0OjAy4oCvQU0gTGVvbiBSb21hbm92c2t5IDxsZW9uQGtl
cm5lbC5vcmc+IHdyb3RlOg0KPg0KPiBPbiBUaHUsIEp1biAwNCwgMjAyNiBhdCAwMzozNjo0OFBN
IC0wNDAwLCBEYXZpZCBIdSB3cm90ZToNCj4gPiBPbiBUaHUsIEp1biA0LCAyMDI2IGF0IDU6NDPi
gK9BTSBMZW9uIFJvbWFub3Zza3kgPGxlb25Aa2VybmVsLm9yZz4gd3JvdGU6DQo+ID4gPg0KPiA+
ID4gT24gTW9uLCBKdW4gMDEsIDIwMjYgYXQgMDg6MDA6MTJQTSArMDAwMCwgRGF2aWQgSHUgd3Jv
dGU6DQo+ID4gPiA+IEBAIC0xMzMsNiArMTM3LDExIEBAIHN0cnVjdCBzZ190YWJsZSAqZG1hX2J1
Zl9waHlzX3ZlY190b19zZ3Qoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLA0KPiA+
ID4gPiAgICAgICB9DQo+ID4gPiA+DQo+ID4gPiA+ICAgICAgIG5lbnRzID0gY2FsY19zZ19uZW50
cyhkbWEtPnN0YXRlLCBwaHlzX3ZlYywgbnJfcmFuZ2VzLCBzaXplKTsNCj4gPiA+ID4gKyAgICAg
aWYgKCFuZW50cykgew0KPiA+ID4gPiArICAgICAgICAgICAgIHJldCA9IC1FSU5WQUw7DQo+ID4g
PiA+ICsgICAgICAgICAgICAgZ290byBlcnJfZnJlZV9zdGF0ZTsNCj4gPiA+ID4gKyAgICAgfQ0K
PiA+ID4NCj4gPiA+IFRlY2huaWNhbGx5LCB0aGlzIGh1bmsgaXMgbm90IG5lY2Vzc2FyeSwgc2lu
Y2Ugc2dfYWxsb2NfdGFibGUoKSB3aWxsDQo+ID4gPiByZXR1cm4gLUVJTlZBTCB3aGVuIG5lbnRz
ID09IDAuIEF0IGxlYXN0LCB0aGF0IGlzIHRoZSBiZWhhdmlvciBJIHJlbGllZCBvbi4NCj4gPg0K
PiA+IEkgb3JpZ2luYWxseSBhZGRlZCB0aGlzIGV4cGxpY2l0IGNoZWNrIGluIHY1IHRvIGFkZHJl
c3MgSmFzb24ncw0KPiA+IGZlZWRiYWNrLCBhbmQgdG8gbWFrZSB0aGUNCj4gPiBmYWlsdXJlIGV4
cGxpY2l0IHJhdGhlciB0aGFuIHJlbHlpbmcgb24gYHNnX2FsbG9jX3RhYmxlKClgIGZhaWxpbmcN
Cj4gPiBzaWxlbnRseSBvbiBgbmVudHM9MGAuDQo+DQo+IEkgcHJlZmVyIGV4cGxpY2l0IGNoZWNr
cywgYnV0IEkgYW0gbm90IGluIGZhdm9yIG9mIGR1cGxpY2F0aW5nIHRoZW0uDQo+IFNpbmNlIHNn
X2FsbG9jX3RhYmxlKCkgYWxyZWFkeSB2YWxpZGF0ZXMgdGhpcyBjb25kaXRpb24sIHdlIGRvIG5v
dCBuZWVkDQo+IHRvIHJlcGVhdCB0aGUgc2FtZSBjaGVjayBpbiBkbWEtYnVmLiBBIGNvbW1lbnQg
c2hvdWxkIGJlIHN1ZmZpY2llbnQgdG8NCj4gaW5mb3JtIGZ1dHVyZSByZXZpZXdlcnMgdGhhdCBu
ZW50cyA9PSAwIGlzIGFscmVhZHkgaGFuZGxlZC4NCj4NCj4gVGhhbmtzDQoNCkhpIExlb24sDQoN
ClRoYW5rIHlvdSBmb3IgY2xhcmlmeWluZyB0aGlzIGZ1cnRoZXIuIFJlbW92aW5nIHRoZSBkdXBs
aWNhdGlvbiBoZXJlDQpzb3VuZHMgZ29vZCB0bw0KbWUuIEknbGwgZHJvcCB0aGUgaHVuaywgYWRk
IGEgY29tbWVudCBmb3IgcG9zdGVyaXR5IG5vdGluZyB0aGF0IGBuZW50cw0KPSAwYCBpcw0KaGFu
ZGxlZCBieSBgc2dfYWxsb2NfdGFibGUoKWAsIGFuZCBzZW5kIG91dCBhIHY2IHNob3J0bHkuDQoN
ClRoYW5rcyBhIGJ1bmNoLA0KRGF2aWQNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFy
by1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=

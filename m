Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8cVyJo42R2peUQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 03 Jul 2026 06:11:58 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3146FE5A1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 03 Jul 2026 06:11:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=google.com header.s=20251104 header.b=I84E0W5B;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=google.com (policy=reject);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C864540D40
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Jul 2026 04:11:56 +0000 (UTC)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	by lists.linaro.org (Postfix) with ESMTPS id B659B3F789
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Jul 2026 04:11:45 +0000 (UTC)
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-5aeb688ae83so32973e87.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 02 Jul 2026 21:11:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783051904; cv=none;
        d=google.com; s=arc-20260327;
        b=lr4IrYvfUlG/eI2YwIqxlM2FdW8p9FmuVSUyhkLlYLRrU7CcH3ODbixmWiifAx9sKs
         QBrLXocE0dTPJeLxvG3UREz0Tm+9xvIWJ+K27vuFpqqg3zt0FwMk/cuQBamGWcTcB+14
         2QtPvudOIuZcSX7grb2t0HabfJ8mLuyXLGGmpqNZ2VIJJ24Xeqs7+K2to7uomuC9dFjC
         7l3DovDGfyihBFRUuG+JHWEy53GDnIRQywqAgCtwKWlRg7rS3W4GpogvILWtdB8em+GU
         33jLCyBnw+vylOYDwOQbFlu5bqmCIV3PHRNppAKPHwC1ZZmi6OFnCBM7I9/s80EfrY5e
         y5mA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=mYG5gbdqiZUgRx9K2qyqNMU3tiBr/+AhYbboeAOaEGY=;
        fh=JHkNAi4QcSgZWUQaIm1oRtU3NzK4FGz4L7duTMrQi+0=;
        b=QMv4urtG4K1xbHdnYpScZSeCGyPzuA+WyPS2eKlyDYQYil5mvY1xCAeorXNPyXFvaB
         qBz1DKS8i13XR2h11iZL9Djg1JOp7ypCv/bFQngkIIrCIRlJ3U7hmPhBEgOe1TBopyaH
         sjQs1qayHlrpZszD+cpyMIRdH/swD99VriccbouVcqd7PRyG/OpMzAJImW5nNflylGoj
         eSsCgL+/g04O9rDa29efuPA179lNfs7lK2M0WeJ47RUy4Tna7zRKc1Z7fA+s795yZjQ5
         1bYYy0brx7rBqZahrJ0bWTZh0bphEv1UITQ+OL3GY4VbBCtN+/hIvmSDq04kAv58eLZe
         Na3w==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1783051904; x=1783656704; darn=lists.linaro.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=mYG5gbdqiZUgRx9K2qyqNMU3tiBr/+AhYbboeAOaEGY=;
        b=I84E0W5BXiZFINyMMWn0a5oJlpGCBh5Pt2A8xYnCA0T7j/JuGuoKd2RYXTdt8YNO7y
         2VleiJ8wQHjIZErLZFPEXSiNVjY0JYpk7D1jcNmpcw7SQYV7isCgzistuPfQCZZfdmZW
         yYVTHbCfnvCHC2cG28SmvyxsUb+8oC2Xeu+HegArnbp/9K8o78BMAbUaDjPzUKyEjA/S
         iD7kHbuaEmeQpChVcztrc6NJJJfn6U8vAXQSVNMxX+wTJNxdvsXgZOfYyIhwXZB/htpu
         HbTQmAADnDWpqIR7yXmd0ZzDPnVuo7hF5zj1SSj63xM1K/EgkeLbPK8Oi6CAbXsluCTA
         bq3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783051904; x=1783656704;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=mYG5gbdqiZUgRx9K2qyqNMU3tiBr/+AhYbboeAOaEGY=;
        b=a15YXKQZ/LPkTRAnXvSKXXRJLp/Q6zSSQag1OkbURgU/cpb1WqSE0Ds5NChmXXJAJd
         qlteJloJ6/SBNq6X4RX3T6r5neucQ6V8rzxvVMyE9zjeAOksNBR0QmellWmr0oPiuTP7
         uyRdiVw8a6GfWZex/b+TA2a1CC3VBgeIY3tRzegwNeLGZOW7SgOFXQHxd0A+V96bmVDZ
         WcV8cGAxHdfxCdPGO009vHXoobm5vWN4S36JLGVjT5rbUIkoeniNNbDWSHCR6HEqR57s
         CNaG8p3+yAAE2JC9m6mD6SNydZ1PUT9co5GAdnz9PdLiC03CQGSKq86q+lM1qosKBt8x
         KeaA==
X-Forwarded-Encrypted: i=1; AHgh+RoUQ+06rEIU8S22Plx4i15ZQ4cBrIJhq1cS7B1qrIe8Ey7i+YJDLaBVW9pK4mRNaAo/K8/kkP1wKXHhFkKE@lists.linaro.org
X-Gm-Message-State: AOJu0Yx7CI6mQ4zdY7F54/1LkRBfcPQTSW/Mv79t3IjPGpEAdyke5plH
	DvP9EVvyrOf2QVqRqkwdTwPNOGD9EWiikrIIXmUFTkTsl+WYewCffLuzV1+I0EjZBJP/HMkc8KI
	dApIHvJvYzPc2WMFqeoO+IvKUiSpI5IcyfoX6kOs=
X-Gm-Gg: AfdE7ckthDIzFdqzS1TzhKuWCQXOvGY97A/rlfgB+PDXiW89x22dMlz+/HodumcsM1h
	hw3/nz/bYsDUCVNxwv3a4UpLXZ4+lrITrQ5eiykM9a/U8e2H1qG6Dj48T++NW0tQL3VcVBgPEq9
	7StOtTOndqiDLeFfhva5nDPAJC1N8LQcLg/KvZ2gy9w9GSf+liW3r6n/60nLIjPkrTZrmhqdCXv
	OMjPrLKbdawgtYmHRM2Pb1xzbyR4sYIQ7btcDL37aqFfWFJycpA5/a9OOcaqE90vHPmTYCCIHz8
	fQYspKfUBYg4UN1X3isE2lclkiZLAQ==
X-Received: by 2002:a05:6512:3b0d:b0:5ad:4a8f:58ed with SMTP id
 2adb3069b0e04-5aecc237342mr247261e87.7.1783051903965; Thu, 02 Jul 2026
 21:11:43 -0700 (PDT)
MIME-Version: 1.0
References: <20260621222130.1667453-1-xuehaohu@google.com> <20260623015459.1153884-1-xuehaohu@google.com>
 <20260623094446.4a8fc2ed@pumpkin> <ajryxMaT5evDUxaq@google.com>
 <20260623235350.6540eaa2@pumpkin> <20260630124252.GD7525@ziepe.ca>
 <CAPd9Lg9uY1RZvYUtcbKUg=VdWM61M2f3aqmS5veUg_8M_Ce80g@mail.gmail.com> <20260702091040.35eff00c@pumpkin>
In-Reply-To: <20260702091040.35eff00c@pumpkin>
From: David Hu <xuehaohu@google.com>
Date: Fri, 3 Jul 2026 00:11:31 -0400
X-Gm-Features: AVVi8CeOojzP-I_HmExSVQqRC_n17UpgYFkRlrxVBr237r7JGuzRVJ9YNtE2VWM
Message-ID: <CAPd9Lg-ti9hOr4-62xExbNuBJ1fmnhg_Vi1uxFZ8h-9FoeGAnA@mail.gmail.com>
To: David Laight <david.laight.linux@gmail.com>
X-Spamd-Bar: ----
Message-ID-Hash: FY3VSUT67L34WXD4FHFTULNKHJH7RAJQ
X-Message-ID-Hash: FY3VSUT67L34WXD4FHFTULNKHJH7RAJQ
X-MailFrom: xuehaohu@google.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Jason Gunthorpe <jgg@ziepe.ca>, Pranjal Shrivastava <praan@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Nicolin Chen <nicolinc@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, jmoroni@google.com, kpberry@google.com, chriscli@google.com, sashiko-bot@kernel.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-buf: Split sgl into page-aligned 2G chunks
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FY3VSUT67L34WXD4FHFTULNKHJH7RAJQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [5.09 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:david.laight.linux@gmail.com,m:jgg@ziepe.ca,m:praan@google.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:nicolinc@nvidia.com,m:leon@kernel.org,m:kevin.tian@intel.com,m:ankita@nvidia.com,m:alex@shazbot.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:iommu@lists.linux.dev,m:jmoroni@google.com,m:kpberry@google.com,m:chriscli@google.com,m:sashiko-bot@kernel.org,m:stable@vger.kernel.org,m:davidlaightlinux@gmail.com,s:lists@lfdr.de];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER(0.00)[xuehaohu@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xuehaohu@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[google.com:-];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1E3146FE5A1

T24gVGh1LCBKdWwgMiwgMjAyNiBhdCA0OjEw4oCvQU0gRGF2aWQgTGFpZ2h0DQo8ZGF2aWQubGFp
Z2h0LmxpbnV4QGdtYWlsLmNvbT4gd3JvdGU6DQo+DQo+IE9uIFRodSwgMiBKdWwgMjAyNiAwMDo1
Njo0MCAtMDQwMA0KPiBEYXZpZCBIdSA8eHVlaGFvaHVAZ29vZ2xlLmNvbT4gd3JvdGU6DQo+DQo+
ID4gT24gVHVlLCBKdW4gMzAsIDIwMjYgYXQgODo0MuKAr0FNIEphc29uIEd1bnRob3JwZSA8amdn
QHppZXBlLmNhPiB3cm90ZToNCj4gPiA+DQo+ID4gPiBPbiBUdWUsIEp1biAyMywgMjAyNiBhdCAx
MTo1Mzo1MFBNICswMTAwLCBEYXZpZCBMYWlnaHQgd3JvdGU6DQo+ID4gPg0KPiA+ID4gPiA+IElm
IHdlIHJlc3RyaWN0IGluY29taW5nIGRtYWJ1ZiB0cmFuc2ZlcnMgdG8gZml0IHdpdGhpbiBWRlMt
Y2VudHJpYw0KPiA+ID4gPiA+IGxpbWl0cyAoMkdCKSwgd2UgaW1wb3NlIHVubmVjZXNzYXJ5IG92
ZXJoZWFkIG9uIHRoZSBSRE1BIHN0YWNrLCBmb3JjaW5nDQo+ID4gPiA+ID4gaXQgdG8gbWFuYWdl
IGEgc2lnbmlmaWNhbnRseSBoaWdoZXIgbnVtYmVyIG9mIG1lbW9yeSByZWdpc3RyYXRpb25zLiBC
eQ0KPiA+ID4gPiA+IGNsZWFubHkgc3BsaXR0aW5nIHRoZXNlIG1hc3NpdmUgY29udGlndW91cyBk
ZXZpY2UgYnVmZmVycyBpbnRvDQo+ID4gPiA+ID4gcGFnZS1hbGlnbmVkIFNHTCBlbnRyaWVzLCB3
ZSBkaXJlY3RseSBpbXByb3ZlIHRoZSBlZmZpY2llbmN5IG9mIFAyUA0KPiA+ID4gPiA+IHRyYW5z
ZmVycyBhbmQgbWVtb3J5IHJlZ2lzdHJhdGlvbi4NCj4gPiA+ID4NCj4gPiA+ID4gQnV0IGEgZGl2
aWRlIGJ5ICc0RyAtIFBBR0VfU0laRScgaXMgYWxzbyBub24tdHJpdmlhbCBhbmQgKEkgdGhpbmsg
YWZmZWN0cw0KPiA+ID4gPiBhIGxvdCBvZiBpbykgd2hlbiB0aGUgcXVvdGllbnQgaXMgYWx3YXlz
IDEuDQo+ID4gPiA+IFNwbGl0dGluZyBpbnRvIDJHIGNodW5rcyBpcyBhIGxvdCBjaGVhcGVyLg0K
PiA+ID4NCj4gPiA+IERvZXNuJ3QgbWF0dGVyIHRoaXMgaXNuJ3QgZmFzdCBwYXRoIHN0dWZmLiBJ
dCBpcyBiZXR0ZXIgdG8gdXNlIGZld2VyDQo+ID4gPiBTR0wgZW50cmllcywgSUhNTy4NCj4gPiA+
DQo+ID4gPiA+ID4gU2luY2UgdGhpcyBjaGFuZ2UgZG9lc24ndCBzZWVtIHRvIGhhdmUgYSBuZWdh
dGl2ZSBpbXBhY3Qgb24gc3RhbmRhcmQgZmlsZQ0KPiA+ID4gPiA+IEkvTyBvciBicmVhayBleGlz
dGluZyBWRlMgY29uc3RyYWludHMsIEknbSBjdXJpb3VzIHdoeSB3ZSBzaG91bGRuJ3QNCj4gPiA+
ID4gPiBzdXBwb3J0IHNwbGl0dGluZyB0aGVzZSA+NEdCIFAyUCB0cmFuc2ZlcnM/IEFtIEkgbWlz
c2luZyBzb21ldGhpbmc/DQo+ID4gPiA+DQo+ID4gPiA+IEkgd2FzIG9ubHkgd29uZGVyaW5nIHdo
ZXRoZXIgaXQgd2FzIG5lZWRlZC4uLg0KPiA+ID4gPiBJdCBkb2VzIGJyaW5nIHVwIHRoZSBxdWVz
dGlvbiBvZiB3aHkgdGhlID40R0IgdHJhbnNmZXJzIGV2ZW4gbmVlZCBzcGxpdHRpbmcuDQo+ID4g
PiA+IEJ1dCB0aGF0IGlzIGFub3RoZXIgcXVlc3Rpb24uDQo+ID4gPg0KPiA+ID4gU0dMIGNhbiBv
bmx5IHN0b3JlIGFuIHVuc2lnbmVkIGludCBzaXplLCBzbyBhbnkgbGFyZ2UgcGh5c2ljYWwgcmFu
Z2UNCj4gPiA+IGhhcyB0byBiZSBzcGxpdCBkb3duLg0KPiA+ID4NCj4gPiA+IHJkbWEgbm93IGEg
ZGF5cyBoYXMgY29kZSB0byBwcm9jZXNzIHRoZSBzZ2wgYW5kIHJlc3RvcmUgYmFjayB0aGUgPiA0
Rw0KPiA+ID4gc2l6ZXMgc2luY2UgbW9kZSBSRE1BIEhXIGNhbiBhY2NlcHQgdGhhdC4NCj4gPiA+
DQo+ID4gPiBjb21taXQgNDg2MDU1ZjVlMDlkZjk1OWFkNGUzYWE0ZWU3NWI1YzkxZGRlZWMyZQ0K
PiA+ID4gQXV0aG9yOiBNaWNoYWVsIE1hcmdvbGluIDxtcmdvbGluQGFtYXpvbi5jb20+DQo+ID4g
PiBEYXRlOiAgIE1vbiBGZWIgMTcgMTQ6MTY6MjMgMjAyNSArMDAwMA0KPiA+ID4NCj4gPiA+ICAg
ICBSRE1BL2NvcmU6IEZpeCBiZXN0IHBhZ2Ugc2l6ZSBmaW5kaW5nIHdoZW4gaXQgY2FuIGNyb3Nz
IFNHIGVudHJpZXMNCj4gPiA+DQo+ID4gPiBTbyB3aGF0ZXZlciB0aGlzIHByb2R1Y2VzIG5lZWRz
IHRvIGJlIGNvbXBhdGlibGUgd2l0aCB0aGF0IHRvIHVuZG8gaXQuDQo+ID4NCj4gPiBUaGFuayB5
b3UgZXZlcnlvbmUuIEl0IGxvb2tzIGxpa2UgbW9zdCBvcGVuIGlzc3VlcyBhcmUgc29ydGVkIG91
dC4NCj4gPiBJJ2xsIHdhaXQgZm9yIG1haW50YWluZXJzIHRvIHdlaWdoIGluIGJlZm9yZSBzZW5k
aW5nIG91dCB2MyAod2hpY2gNCj4gPiB3aWxsIHJlbW92ZSB0aGUgdHlwZSBjYXN0IGZvciBtaW4o
KSBwZXIgRGF2aWQgTC4ncyBmZWVkYmFjaywgYW5kDQo+ID4gcmV2ZXJ0IHRvIEFMSUdOX0RPV04o
VUlOVF9NQVgsIFBBR0VfU0laRSkgcGVyIEphc29uJ3MgZmVlZGJhY2spLg0KPg0KPiBEb2VzIHRo
aXMgY29kZSBnZXQgdXNlZCBhIGxvdCBmb3IgJ25vcm1hbCcgdHJhbnNmZXJzPw0KPiBJJ20gYXdh
eSBmcm9tIG15IG5vcm1hbCBzeXN0ZW1zIGFuZCBjYW4ndCBjaGVjay4NCj4gQnV0IGlmIHByZXR0
eSBtdWNoIGFsbCBvZiB0aGUgZnJhZ21lbnRzIGFyZSBzbWFsbCAoPCA0RykgdGhlbg0KPiBpdCBp
cyBwcm9iYWJseSB3b3J0aCBhZGRpbmcgYSBjaGVjayBmb3IgJ3NpemUgPCBsaW1pdCcgYmVmb3Jl
DQo+IGFueXRoaW5nIGVsc2UgYW5kIG9wdGltaXNpbmcgdGhhdCBjYXNlLg0KPg0KDQpIaSBEYXZp
ZCwNCg0KVGhhbmsgeW91IGZvciByYWlzaW5nIHRoaXMuIFRoaXMgZmlsZSAoYGRtYS1idWYtbWFw
cGluZy5jYCkgd2FzDQpyZWNlbnRseSBhZGRlZCBbMV0gdG8gZXhjbHVzaXZlbHkgZXhwb3J0IE1N
SU8gZGV2aWNlIG1lbW9yeS4NClRoZXJlZm9yZSwgaXQgaXMgYnlwYXNzZWQgY29tcGxldGVseSBm
b3IgYG5vcm1hbGAgdHJhbnNmZXJzIChJSVVDLA0KZS5nLiwgdmlkZW8gYnVmZmVycyBmb3IgVjRM
MiBvciBEUk0pLg0KDQpSZWdhcmRzLA0KRGF2aWQNCg0KWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2FsbC8yMDI1MTEyMC1kbWFidWYtdmZpby12OS02LWQ3ZjcxNjA3ZjM3MUBudmlkaWEuY29t
Lw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5s
aW5hcm8ub3JnCg==

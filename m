Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OJxjCUceDGqoWgUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 10:24:39 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B08B1579F2E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 10:24:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AFFE2406A2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 08:24:37 +0000 (UTC)
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	by lists.linaro.org (Postfix) with ESMTPS id 029D23F829
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 08:24:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=k5p63VnU;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of kartikey406@gmail.com designates 209.85.128.173 as permitted sender) smtp.mailfrom=kartikey406@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-7c58e6eb2c8so26210777b3.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 01:24:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779179067; cv=none;
        d=google.com; s=arc-20240605;
        b=B/Djn+jvG+RwokMsZ57T+lpfeMfjm8EiTZ4YNfhSQSznNNmMxFWCcyO5yxqzASIlD+
         4ahcrl2U+PyTay8D3C2XyWD2t1Ek15wsa/8muJwf42EN6yy8+oLA5bnpTGHLtZQ1fDRA
         WEKDsWVrStAnrK8AOBFn0Pb/4Opk6tCjVfbPFPFe51rzIkTG8BKQVzADGnQ/JKdUPnWC
         l6PO10syz01gl4E/b+vbYqYq5gSa0PyROl+icDUxR9Qux6Irp19qPC+cY93wafSBdJ3o
         yx6qg/tQu5EEAJXxypQQ7TlPotXwu+S/83C97NM8r+OZFWjHwEim3jrzHc5pP+rMRvN4
         ACTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=6MJFOu1HURlx5XM1WoHG2w7zZ8Z0olnSEZRjhu2b8sE=;
        fh=B3nWIWRdXL2M+zHnVpdsrpttc6XN+oJBeZ2m/SymX0Q=;
        b=YnmO5cqxN/0b0OJP9tr79rie0yKrxtydd20C4AF1qmFv4LLpMuutDAicM2AtKVrn6N
         6yn+oV4YPvNrSADGpAlQYMeF8Eco0XYHwzTQHKxhWuhQwueggShjILiGuDF83k4lAq+C
         iUV9JEU421s5vJZn7wRXqsfqeTvBrkVjVAbm/lCly/b7I4/BhzjkljK1itJBMKL1pWve
         uiMumGz33dgs8NxB4LVGzTaup3bGLZGg52dDLrIk/0jY9w3D6hvqEs9DArTAzMK1rOdm
         VTxeo+B9sTGoMo3YyviC04NlwdBYPD+sdAuAIQi+MgCI/ZPy4buWoU6+IxPYEyc6IEEN
         Dl6A==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779179067; x=1779783867; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6MJFOu1HURlx5XM1WoHG2w7zZ8Z0olnSEZRjhu2b8sE=;
        b=k5p63VnU9ZoPuicZ6dQagjFPsKVN9+5eIychGIVqm4IaY/UU2c/lnMRam+WAzGDheM
         Eosq1t3dzscjyZo382AyG5M4eazSB18SGTHpWUsgVRVKC0El+Y/f7r24sVnfz6rCeJA4
         EYhIL8fFqRhAB3aJumNzkF2FQOVG9uLgyYhQSN7+Ymeil6mM6bgNViIomoV+Z+rVrOEs
         8fRs9aqqDa8W2TsZ6Kr3xNdhcXySdClRYd3vt7sieJSVlXvkJF9CR4iv1gPcfpQb7OTN
         Kg+0axfCEV8I/rYjzoz0lYJAfvVvf5rpLuLYjDg9tPeTPksMgfhPwg2LQB4wSJlnX/1O
         ngVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779179067; x=1779783867;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6MJFOu1HURlx5XM1WoHG2w7zZ8Z0olnSEZRjhu2b8sE=;
        b=YW/2YLWEBldWS16IEy24y+SunPL6HYY9Jvzw8nNd1Ci71SBkW2AMro9aMurPLN8Pci
         paakm4IF9WThTPv1qeDsujYaFO6yhLYPmk4IKJFHV2qtSKT6ivOcFlQi7INIz2pLc5VN
         p1DwO4bsdmupE5A8PXnhUxEuhp0RQnp73W+zVU2aKJSOW7BecVAnpBXJHbPIiG0bEWbz
         sQCCKQBd8bVTof5bsga8i7zdkx//fKE+9bj5JtdfHoyaqB4KrgiqEeFRiizSVpBau1y0
         ZhbPqbI3tl1QVw+YsGSUcTpdxP8xnZIYAtqlvdpJ/9MZN+PNHHgPU7d2zRMIXC/ivdju
         D81w==
X-Forwarded-Encrypted: i=1; AFNElJ9dMZWtGqRtHZ5xE5J+M34mJuvfHeW562DR4wx7qf/5g3lNtPCxlNfXS1cBL1ztNc7YGP9xX+MQUoElBGRy@lists.linaro.org
X-Gm-Message-State: AOJu0YzjwnOhjllwRhQngLFpa6a0PIVstRwdENbWsrSNkmAiKyDBsaY0
	nKCRCWSX2nT7UicRt2bW/lx2IWM/h3HnwCtr0UNx0BfsdA0NSteEvZFEwTrNMBC9cPSqf22MLaQ
	qxbt1YXjAxqvGYlNgQm+Cgog9AYzNR2k=
X-Gm-Gg: Acq92OE7KeeO8QLC1Na4xZkwSd7V8Ef+AiCO21Jx/H3qN972eUrbLx/QLzCRzdOBrjf
	oOcAe02K/6SFm2k0psuDCaCbrU71aFI1Ci6LtRcrrfgXVe3Azx7Q8bKzkYaRovaSJfx6/ha08x8
	18gVpwx6fmKDpObpfVJ9ODp6Rf8kWeAQ0Wg1ftAw/GXt8Pfyh31r2MRGIewJw67z9dsat7jQQ6w
	1C26eQlACs0fWtsraPxBorpdLJtTilglBwh8ba3SUtY/ZCIKEyjV63oR3aoDhY1+pomNFlzNIkJ
	WMrL8QeDM/syxIyXYfGLjAhlyDl3kplMtIC6kywlC/Ip9ZeeF/4AZUV3PemrGz7268a/LA==
X-Received: by 2002:a05:690c:f02:b0:7cf:ab4d:a0e6 with SMTP id
 00721157ae682-7cfab4da692mr7412417b3.19.1779179067451; Tue, 19 May 2026
 01:24:27 -0700 (PDT)
MIME-Version: 1.0
References: <20260515084030.21986-1-kartikey406@gmail.com> <afec1199-4889-4d35-964c-4432ec792fa3@collabora.com>
In-Reply-To: <afec1199-4889-4d35-964c-4432ec792fa3@collabora.com>
From: Deepanshu Kartikey <kartikey406@gmail.com>
Date: Tue, 19 May 2026 13:54:12 +0530
X-Gm-Features: AVHnY4It9V2jN-5fjRsBqTKrkzDjZ0cvyy8FQ1o37xh7kT1TdZijJ2KMlBZd7uk
Message-ID: <CADhLXY5Mp3QjKoYHpgdd+mehZnOt2fkhCWNNrjfH1rZsKPjycg@mail.gmail.com>
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>
X-Spamd-Bar: ----
Message-ID-Hash: 4OEPMYHE2DU4FXYREQRYJ5H72XKCSNBX
X-Message-ID-Hash: 4OEPMYHE2DU4FXYREQRYJ5H72XKCSNBX
X-MailFrom: kartikey406@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: airlied@redhat.com, kraxel@redhat.com, gurchetansingh@chromium.org, olvaffe@gmail.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, simona@ffwll.ch, sumit.semwal@linaro.org, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, virtualization@lists.linux.dev, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, syzbot+72bd3dd3a5d5f39a0271@syzkaller.appspotmail.com, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3] drm/virtio: use uninterruptible resv lock for plane updates
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4OEPMYHE2DU4FXYREQRYJ5H72XKCSNBX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,chromium.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,linaro.org,amd.com,lists.freedesktop.org,lists.linux.dev,vger.kernel.org,lists.linaro.org,syzkaller.appspotmail.com];
	TAGGED_RCPT(0.00)[linaro-mm-sig,72bd3dd3a5d5f39a0271];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kartikey406@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo,mail.gmail.com:mid,linaro.org:email]
X-Rspamd-Queue-Id: B08B1579F2E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gU3VuLCBNYXkgMTcsIDIwMjYgYXQgOTo0NOKAr1BNIERtaXRyeSBPc2lwZW5rbw0KPGRtaXRy
eS5vc2lwZW5rb0Bjb2xsYWJvcmEuY29tPiB3cm90ZToNCj4NCj4gT24gNS8xNS8yNiAxMTo0MCwg
RGVlcGFuc2h1IEthcnRpa2V5IHdyb3RlOg0KPiA+ICtpbnQgdmlydGlvX2dwdV9hcnJheV9sb2Nr
X3Jlc3ZfdW5pbnRlcnJ1cHRpYmxlKHN0cnVjdCB2aXJ0aW9fZ3B1X29iamVjdF9hcnJheSAqb2Jq
cykNCj4gPiArew0KPiA+ICsgICAgIHVuc2lnbmVkIGludCBpOw0KPiA+ICsgICAgIGludCByZXQg
PSAwOw0KPiA+ICsNCj4gPiArICAgICBpZiAob2Jqcy0+bmVudHMgPT0gMSkgew0KPiA+ICsgICAg
ICAgICAgICAgZG1hX3Jlc3ZfbG9jayhvYmpzLT5vYmpzWzBdLT5yZXN2LCBOVUxMKTsNCj4gPiAr
ICAgICB9IGVsc2Ugew0KPiA+ICsgICAgICAgICAgICAgcmV0ID0gZHJtX2dlbV9sb2NrX3Jlc2Vy
dmF0aW9ucyhvYmpzLT5vYmpzLCBvYmpzLT5uZW50cywNCj4gPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgJm9ianMtPnRpY2tldCk7DQo+DQo+IGRybV9nZW1f
bG9ja19yZXNlcnZhdGlvbnMoKSBpcyBpbnRlcnJ1cHRpYmxlLiBHaXZlbiB0aGF0IG9ubHkgb25l
IEJPDQo+IG5lZWRzIHRvIGJlIGxvY2tlZCBmb3IgdGhlIGZpeCwgbWFrZSBpdA0KPiB2aXJ0aW9f
Z3B1X2xvY2tfb25lX3Jlc3ZfdW5pbnRlcnJ1cHRpYmxlKCkgYW5kIGZhaWwgd2l0aCAtRUlOVkFM
IGlmDQo+IG9ianMtPm5lbnRzID4gMQ0KPg0KPiAtLQ0KPiBCZXN0IHJlZ2FyZHMsDQo+IERtaXRy
eQ0KPg0KDQpJIGhhdmUgc2VudCBwYXRjaCB2NC4NCg0KVGhhbmtzDQoNCkRlZXBhbnNodQ0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8u
b3JnCg==

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id aRfkDmtgPWq/2AgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:07:55 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B605C6C7B3F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:07:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=linaro.org header.s=google header.b=QvPxEajs;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=pass (policy=none) header.from=linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CDDBC4463D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 17:07:53 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by lists.linaro.org (Postfix) with ESMTPS id 4C7453F7FF
	for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jun 2026 11:37:01 +0000 (UTC)
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-697b8540279so2695248a12.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jun 2026 04:37:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1782214620; x=1782819420; darn=lists.linaro.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=vrJY9tPoVNjhWds3xBnPrrXJRaSMY2w+oQ1XUr+IdIA=;
        b=QvPxEajsx/jucmgHB1BA7EDoxzgj2xzm8QDLw3MztWlbRopfttwFBXiR1ggRpKdk2F
         j/oeoNGAK2KlpmPcFkfL6VHfxGnYxHQuZ8/VyERo6i17JwjMif3hYi+NtZdE+DYOOFUu
         D4J1ixzpXRjVIL44aTGo0Go4mhPNoEzfsotYs5vokInnVBZ02vIPlr+o16bIqwrTEs8j
         tsPZ9qjLMx4XUeriMXO5DrAtibJN1Mw9spJNuejWUd8EkcrVHWTKlGRKnM0+KvQ0qheo
         rAyylrg4JebkSRmugu/rgA0ppwwGlOR36b2Uga+xypj3be/lrXrc423NX/NdxkBbdss5
         gOLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782214620; x=1782819420;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vrJY9tPoVNjhWds3xBnPrrXJRaSMY2w+oQ1XUr+IdIA=;
        b=B2iHerCr6WPsDLuFuUdzhXfgmLJRcq3ur5AVPZ4DUcS3J7ywXm4ufSAHac0t8Mjm/b
         VOpOAqgfqUocAP5ahimJW48kqNSStV6fWym4/ylVw45SV92XQFJs6AsascDmgEBI9+04
         Jo8oTVn3bpbaGRHTDq19YF76W53w7jxRPuaKJ5HhyeytYpJrAktsenoCyezkkszOcHRm
         5ngv+HHHZHqgNGff4UsiZ+u8eNDPUwTf2PVfpNNdLHogBnXHvlA0a4Ma6Qtfov1K4DL8
         Mxe03CLAgRK/ZuMrlcpyC3ZW6OBX9tx4HeWIhKxIXFFVtXnauYMXUHlHeFLypi/cRpTk
         xlWA==
X-Forwarded-Encrypted: i=1; AFNElJ/+Efsd8oEWXR0EaP1yhLExM9asycc+2PCfk7Q0ifB0giJhaxSheVlMD0iw0Em93w++/GQvW4BJ0bleWh2t@lists.linaro.org
X-Gm-Message-State: AOJu0YxJ4/FlxxoKb/h/qiAsTkYtEhk5TeL45EEDSf2y/bSvZihn/EXf
	nkjic34w0t8Vwq//MDFV1wIis0Uwd9Sb9U3qYSHKEZ9hXwLSami/CBkmOnLR6EffVEsEOQ==
X-Gm-Gg: AfdE7ckxv0rIaQo6Jg73HhgvjhTeZMsOjznt+8uIzQsx/Pqc/zXS66GeFbOx6N62rsi
	QgqN3QbcB1RdaKgCPk3NG7Dr41s5k5N9O35cXmcReJccnwXfJ7xxlr6Lxg5dvDJGJvH8T3x7tzc
	cwdT+Z9F4U+cSRrjltwy2yxeRTDYp9V87vbp6lXRuJEwrVVAXjog1t5Bay3fCULMK8rTWpTcDal
	btxUVUI/A/UYvTNXvwy+34/SYwUAGjFP6oRfixj4B1W+9OtF1Gb2P12yHHEp5ZHi7+KLPWwk7ja
	pywvOKOvAIdXOoiVquwqFD2U8egw+0poGQb+rtVBvmlZsPllXkSBnUm8HDfQiPU3S/6m6jbCcAI
	XUYBs1Uvz9GZr7pspuaBFRYtBj3mOhhqJyeWor5oH8H+3rVbY6jW27MTxB9oEoVuXKOWaVXseWB
	ZjpI1I/fBF8jVmTMpWWwZ2vnY2wCWH/g==
X-Received: by 2002:a17:907:3d0e:b0:be2:7f13:8e33 with SMTP id a640c23a62f3a-c107ff8ee16mr115376566b.45.1782214619931;
        Tue, 23 Jun 2026 04:36:59 -0700 (PDT)
Received: from draszik.lan ([212.129.77.116])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c0c6161595csm502806066b.62.2026.06.23.04.36.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2026 04:36:59 -0700 (PDT)
Message-ID: <6483098adae29787862473e39b1f9cf3c3f16625.camel@linaro.org>
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: phasta@kernel.org, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>,  Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>,
 Christian =?ISO-8859-1?Q?K=F6nig?=	 <christian.koenig@amd.com>, Tvrtko
 Ursulin <tvrtko.ursulin@igalia.com>,  Boris Brezillon
 <boris.brezillon@collabora.com>, Danilo Krummrich <dakr@kernel.org>
Date: Tue, 23 Jun 2026 12:37:02 +0100
In-Reply-To: <1cfd56b7f1a166e25d6588d66a621524f3d983de.camel@mailbox.org>
References: <20260618-linux-drm_crtc_fix2-v1-1-c03e77b36f34@linaro.org>
	 <1cfd56b7f1a166e25d6588d66a621524f3d983de.camel@mailbox.org>
User-Agent: Evolution 3.56.2-8+build1 
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: andre.draszik@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ETPGXUI6R3GRVKEKURZPQYCHWOZDLS4D
X-Message-ID-Hash: ETPGXUI6R3GRVKEKURZPQYCHWOZDLS4D
X-Mailman-Approved-At: Thu, 25 Jun 2026 17:06:26 +0000
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, kernel-team@android.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/drm_crtc: fix race with dma_fence_signal() in ::get_driver_name()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ETPGXUI6R3GRVKEKURZPQYCHWOZDLS4D/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.09 / 15.00];
	DATE_IN_PAST(1.00)[53];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:phasta@kernel.org,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:tvrtko.ursulin@igalia.com,m:boris.brezillon@collabora.com,m:dakr@kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:peter.griffin@linaro.org,m:tudor.ambarus@linaro.org,m:jyescas@google.com,m:kernel-team@android.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,igalia.com,collabora.com];
	FORGED_SENDER(0.00)[andre.draszik@linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	R_DKIM_REJECT(0.00)[linaro.org:s=google];
	DKIM_TRACE(0.00)[linaro.org:-];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[linaro.org,none];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,linaro.org:mid,linaro.org:from_mime,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B605C6C7B3F

SGksCgpPbiBUaHUsIDIwMjYtMDYtMTggYXQgMTc6NTYgKzAyMDAsIFBoaWxpcHAgU3Rhbm5lciB3
cm90ZToKPiArQ2MgRGFuaWxvCj4gCj4gT24gVGh1LCAyMDI2LTA2LTE4IGF0IDE1OjAzICswMTAw
LCBBbmRyw6kgRHJhc3ppayB3cm90ZToKPiA+IFNpbmNlIGNvbW1pdCA1NDFjOGYyNDY4YjkgKCJk
bWEtYnVmOiBkZXRhY2ggZmVuY2Ugb3BzIG9uIHNpZ25hbCB2MyIpLAo+ID4gSSdtIHNlZWluZyB0
aGUgQlVHX09OKCkgdHJpZ2dlcmluZyBpbiBkcm1fY3J0YydzIGZlbmNlX3RvX2NydGMoKSB2aWEK
PiA+IGRybV9jcnRjX2ZlbmNlX2dldF9kcml2ZXJfbmFtZSgpIHJlZ3VsYXJseToKPiA+IAo+ID4g
wqDCoMKgIENhbGwgdHJhY2U6Cj4gPiDCoMKgwqDCoCBwYW5pYysweDU4LzB4NWMKPiA+IMKgwqDC
oMKgIGRpZSsweDE2MC8weDE3OAo+ID4gwqDCoMKgwqAgYnVnX2Jya19oYW5kbGVyKzB4NzAvMHhh
NAo+ID4gwqDCoMKgwqAgY2FsbF9lbDFfYnJlYWtfaG9vaysweDNjLzB4MWEwCj4gPiDCoMKgwqDC
oCBkb19lbDFfYnJrNjQrMHgyNC8weDc0Cj4gPiDCoMKgwqDCoCBlbDFfYnJrNjQrMHgzNC8weDU0
Cj4gPiDCoMKgwqDCoCBlbDFoXzY0X3N5bmNfaGFuZGxlcisweDgwLzB4ZmMKPiA+IMKgwqDCoMKg
IGVsMWhfNjRfc3luYysweDg0LzB4ODgKPiA+IMKgwqDCoMKgIGRybV9jcnRjX2ZlbmNlX2dldF9k
cml2ZXJfbmFtZSsweDYwLzB4NjggKFApCj4gPiDCoMKgwqDCoCBzeW5jX2ZpbGVfZ2V0X25hbWUr
MHgxODQvMHg0NWMKPiA+IMKgwqDCoMKgIHN5bmNfZmlsZV9pb2N0bCsweDQwNC8weGY3MAo+ID4g
wqDCoMKgwqAgX19hcm02NF9zeXNfaW9jdGwrMHgxMjQvMHgxZGMKPiA+IAo+ID4gVGhpcyBsb29r
cyB0byBiZSBjYXVzZWQgYnkgYSBjb2RlIGZsb3cgc2ltaWxhciB0byB0aGUgZm9sbG93aW5nOgo+
ID4gCj4gPiArKysgc25pcCArKysKPiA+IHRocmVhZCBBwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdGhyZWFkIEIKPiA+IAo+ID4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGlvY3RsKFNZTkNfSU9DX0ZJTEVfSU5GTykKPiA+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBz
eW5jX2ZpbGVfaW9jdGwoKQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN5bmNfZmlsZV9nZXRfbmFtZSgp
Cj4gPiBkbWFfZmVuY2Vfc2lnbmFsX3RpbWVzdGFtcF9sb2NrZWQoKcKgIGRtYV9mZW5jZV9kcml2
ZXJfbmFtZSgpCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG9wcyA9IHJjdV9kZXJlZmVyZW5jZShm
ZW5jZS0+b3BzKQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoIWRtYV9mZW5jZV90ZXN0X3Np
Z25hbGVkX2ZsYWcoKSkKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG9wcy0+Z2V0X2RyaXZl
cl9uYW1lKGZlbmNlKSBpLmUuCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkcm1fY3J0Y19m
ZW5jZV9nZXRfZHJpdmVyX25hbWUoKQo+ID4gdGVzdF9hbmRfc2V0X2JpdChTSUdOQUxFRCkKPiA+
IFJDVV9JTklUX1BPSU5URVIoZmVuY2UtPm9wcywgTlVMTCkKPiA+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBk
cm1fY3J0Y19mZW5jZV9nZXRfZHJpdmVyX25hbWUoKQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBC
VUdfT04ocmN1X2FjY2Vzc19wb2ludGVyKGZlbmNlLT5vcHMpCj4gPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgIT0gJmRybV9jcnRjX2ZlbmNlX29wcykKPiAKPiBOb3cgdGhpcyBs
b29rcyBsaWtlIGEgdmVyeSBzaW1pbGFyIHByb2JsZW0gdGhhdCBJIGhhdmUgcmVjZW50bHkgYmVl
bgo+IGNvbmNlcm5lZCB3aXRoOgo+IAo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2RyaS1kZXZl
bC8yMDI2MDYxMjEwNDI1MS4yMjY0NzA3LTItcGhhc3RhQGtlcm5lbC5vcmcvCj4gCj4gaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsL2ZhMGRjOTc1N2JmODM0MzUxNmM0YjE1NmEyYjcw
ZWM5MWI2NGVmOGYuY2FtZWxAbWFpbGJveC5vcmcvCj4gCj4gCj4gSSBjb250aW51ZSB0byBiZWxp
ZXZlIGJlY2F1c2Ugb2YgYnVncyBsaWtlIHRoaXMgYW5kIHRoZSBvbmVzIEkgaGF2ZQo+IHF1b3Rl
ZCBpbiB0aGUgdGhyZWFkcyBhYm92ZSB0aGUgcm9idXN0bmVzcyBvZiB0aGUga2VybmVsIGNvdWxk
IGJlCj4gZ3JlYXRseSBpbXByb3ZlZCBpZiB3ZSBjb3VsZCBnZXQgZG1hX2ZlbmNlIGZ1bGx5IHN5
bmNocm9uaXplZCB3aXRoIGl0cwo+IGxvY2suCgpPbiB0b3Agb2YgdGhhdCwgc2FzaGlrbyBoaWdo
bGlnaHRlZCAgKHZpYSBteSBvdGhlciBwYXRjaCkgdGhhdCB0aGUgZXhpc3RpbmcKY29kZSBpcyBt
aXNzaW5nIHNvbWUgbWVtb3J5IGJhcnJpZXJzOgoKaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNo
c2V0LzIwMjYwNjE4LWxpbnV4LWRybV9jcnRjX2ZpeC12MS0xLTgwMWYyOWM5ODUzZEBsaW5hcm8u
b3JnP3BhcnQ9MQoKSSBiZWxpZXZlIExvY2sgc3luY2hyb25pemF0aW9uIHdvdWxkIHJlc29sdmUg
dGhhdCAoYXMgd291bGQgYWRkaW5nIGV4cGxpY2l0Cm1lbW9yeSBiYXJyaWVycykuCgpbLi4uXQoK
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2NydGMuYyBiL2RyaXZlcnMvZ3B1
L2RybS9kcm1fY3J0Yy5jCj4gPiBpbmRleCA2M2VhZDhiYTY3NTYuLjMxYzg2MzZlNzQ2NyAxMDA2
NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fY3J0Yy5jCj4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vZHJtX2NydGMuYwo+ID4gQEAgLTczLDYgKzczLDkgQEAKPiA+IMKgICogJmRybV9t
b2RlX2NvbmZpZ19mdW5jcy5hdG9taWNfY2hlY2suCj4gPiDCoCAqLwo+ID4gwqAKPiA+ICsjZGVm
aW5lIGZlbmNlX3RvX2NydGMoZikgY29udGFpbmVyX29mKChmKS0+ZXh0ZXJuX2xvY2ssIFwKPiA+
ICsJCQkJwqDCoMKgwqDCoCBzdHJ1Y3QgZHJtX2NydGMsIGZlbmNlX2xvY2spCj4gCj4gSSBhZ3Jl
ZSB0aGF0IG1hY3JvcyBzaG91bGQgYmUgYXZvaWRlZCBpZiBwb3NzaWJsZS4KCk5vIHByb2JsZW0s
IEknbGwgY2hhbmdlIHRoYXQuCgo+IAo+ID4gKwo+ID4gwqAvKioKPiA+IMKgICogZHJtX2NydGNf
ZnJvbV9pbmRleCAtIGZpbmQgdGhlIHJlZ2lzdGVyZWQgQ1JUQyBhdCBhbiBpbmRleAo+ID4gwqAg
KiBAZGV2OiBEUk0gZGV2aWNlCj4gPiBAQCAtMTU0LDE0ICsxNTcsNiBAQCBzdGF0aWMgdm9pZCBk
cm1fY3J0Y19jcmNfZmluaShzdHJ1Y3QgZHJtX2NydGMgKmNydGMpCj4gPiDCoCNlbmRpZgo+ID4g
wqB9Cj4gPiDCoAo+ID4gLXN0YXRpYyBjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyBkcm1fY3J0
Y19mZW5jZV9vcHM7Cj4gPiAtCj4gPiAtc3RhdGljIHN0cnVjdCBkcm1fY3J0YyAqZmVuY2VfdG9f
Y3J0YyhzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkKPiA+IC17Cj4gPiAtCUJVR19PTihyY3VfYWNj
ZXNzX3BvaW50ZXIoZmVuY2UtPm9wcykgIT0gJmRybV9jcnRjX2ZlbmNlX29wcyk7Cj4gCj4gKzEK
PiAKPiBCVUdfT04gaXMgbW9yZSBvciBsZXNzIGRlcHJlY2F0ZWQgYW5kIHNob3VsZCBub3QgYmUg
dXNlZCBhbnltb3JlLiBUaGVyZQo+IG5lZWRzIHRvIGJlIGJvbWJhc3RpYyBqdXN0aWZpY2F0aW9u
IGZvciBzaG9vdGluZyBkb3duIHRoZSBlbnRpcmUKPiBrZXJuZWwuCgpZZXMsIEkgbWVhbnQgdG8g
bWVudGlvbiB0aGF0IGluIG15IGNvbW1pdCBtZXNzYWdlIGFzIHdlbGwuCgpOb3csIHlvdSBtaWdo
dCBoYXZlIHNlZW4gdGhhdCBzYXNoaWtvIGhpZ2hsaWdodGVkIHRoYXQgdGhlIGV4aXN0aW5nCkJV
R19PTigpIGlzIG1hc2tpbmcgYSBwb3RlbnRpYWwgdXNlLWFmdGVyLWZyZWUgZHVyaW5nIGRyaXZl
ciByZW1vdmFsIHdoaWNoCkkgYmVsaWV2ZSB0byBiZSBhIGNvcnJlY3Qgb2JzZXJ2YXRpb24uIEl0
IHN1Z2dlc3RzIHR3byBhbHRlcm5hdGl2ZSB3YXlzIHRvCnJlc29sdmUgaXQ6CgpodHRwczovL3Nh
c2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA2MTgtbGludXgtZHJtX2NydGNfZml4Mi12MS0xLWMw
M2U3N2IzNmYzNEBsaW5hcm8ub3JnP3BhcnQ9MQoKPiBEb2VzIHRoZSBDUlRDIG9yIERSTSBkZXZp
Y2UgbmVlZCB0byBiZSBrZXB0IGFsaXZlIGZvciB0aGUgUkNVIGdyYWNlIHBlcmlvZCwKPiBvciBz
aG91bGQgdGhlIGZlbmNlIGhvbGQgYSBwcm9wZXIgcmVmZXJlbmNlIHRvIHByZXZlbnQgdGhlIHVz
ZS1hZnRlci1mcmVlCj4gd2hlbiBnZXRfZHJpdmVyX25hbWUoKSBhbmQgZ2V0X3RpbWVsaW5lX25h
bWUoKSBhY2Nlc3MgdGhlIGZyZWVkIENSVEMKPiBzdHJ1Y3R1cmU/CgpEbyB5b3UgZ3V5cyBoYXZl
IGFueSBwcmVmZXJlbmNlIG9uIHRoYXQ/IEl0IGFwcGVhcnMgdGhlIHVzZS1hZnRlci1mcmVlCnNo
b3VsZCBiZSByZXNvbHZlZCBiZWZvcmUgbWVyZ2luZyB0aGUgcmVtb3ZhbCBvZiB0aGUgQlVHX09O
KCksIGFuZCBJJ2QgbGlrZQp0byBwcm9ncmVzcyBvbiB0aGlzLgoKQ2hlZXJzLApBbmRyZScKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8u
b3JnCg==

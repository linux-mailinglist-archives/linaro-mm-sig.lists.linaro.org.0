Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Oo2cARkWLWocbQQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 13 Jun 2026 10:34:33 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 795E567E250
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 13 Jun 2026 10:34:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=Cdd24CHk;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1690140512
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 13 Jun 2026 08:34:31 +0000 (UTC)
Received: from mail-dy1-f178.google.com (mail-dy1-f178.google.com [74.125.82.178])
	by lists.linaro.org (Postfix) with ESMTPS id 26E8C3F4B6
	for <linaro-mm-sig@lists.linaro.org>; Sat, 13 Jun 2026 08:34:21 +0000 (UTC)
Received: by mail-dy1-f178.google.com with SMTP id 5a478bee46e88-306f1213aadso171674eec.1
        for <linaro-mm-sig@lists.linaro.org>; Sat, 13 Jun 2026 01:34:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781339660; cv=none;
        d=google.com; s=arc-20240605;
        b=c/8TllDwH0MrjkEybIkp5YStjPd+FU7msElgpjT5DQCaiY+s/m+ibS91ft1Sumf38V
         EZwVHCsFPsu73DO+xQWzCHu5dvUdVaXbaNheieMLvOfa8zE+pWxnvNBbGfOxrnGdJRiQ
         6TK6al1OiXmsxVrAxLdQHkwSH7Ivzt3u4BUoTSL6j0mZIAUuYN/fkah/qAvvzBWNHUWr
         R2xzP7CD4AVmPtFGVMXFVVyKcRb+QFZMO06jLSOXbRNp/tkBQ+SW4KHUG0sSV6ccUfBh
         fuMzyGPpjz+DtwOJdMXUGaB0vaRv1THMwztueFB31SsHt5b/b1QPbP8+wGNJWUcBgxiq
         R2fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=mdkmbCRR16qygUgXiWj3N8vn0Fbus0tyv8Tld/tFXHY=;
        fh=2D2/14kIbIazGKTcYMTRUn0sUKI13gzom4DoIi3lSd4=;
        b=Kn6NDzj6Xt450GRKwkhaeKPlEAZf6IOQfCMbc1tP4Q0nwtnYzN2LxF83HF/A+vUQhz
         sRhXT7dRP8fULghC8CgMQEwkd4MOZvapfD0m41Hrl2Cd7GRnnXm7yr/KcKfNBdF0P/AW
         rFwU1lGDzySqP8bmP7GBfYRk2wcGuF2AkPOck2yrFadHPteVPVuDEn3W7EMSqM1uDKVn
         o4RtOftvYp8uqx34HditVNfIWnn4qGhBG/i/cuVwLPEndfZlgkHrE1J3haPQWMJcBNd2
         S/wQ6Hvj8BqZz14WCpC7TFuyU7UlJ0dfytLnh2rgdPWv2EKUIHs447rTGBKeHQueChZU
         Gn+w==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781339660; x=1781944460; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mdkmbCRR16qygUgXiWj3N8vn0Fbus0tyv8Tld/tFXHY=;
        b=Cdd24CHkCDixn8bs1zLOmpEjBcxVBwQ57qpNSNKsPACsJfIZsdNzx/ZSXwp7+eZWgX
         pjKqvPmTI0aY1DF1mDFrB/Nl6y1/emrJ1dDV1mRch6GkUTm/3LRMlQmnUpCXgPtDbRhK
         pJl9t24AdPplYHX1wYIGYiocnJYRH9VET0MJuNvEp18OjzxpNfH27OE7I8dEph7xINSB
         EoWolUkwgWb6vz2/9/RJSKwyfvCG3IfjlkiMbPjowN38BGw+SJ/W4bd64NqnswkOlCFS
         hr/w02ZZb5J2veMc90phxuKnAEVyuQRZnXXUoSoJRMNRvKGXptxVL/4YWveSMwWAjvyw
         zbgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781339660; x=1781944460;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mdkmbCRR16qygUgXiWj3N8vn0Fbus0tyv8Tld/tFXHY=;
        b=UvPPUUsl0prAJW2vqHzXK+AUdyHziIvospQPOssl4sTiODMduUc+qzYqaQvLar6CNB
         C4XNPXRPlfRMvEPTUo+4Ogg6ruW4T1Lsfh4ABB1K/pwswOsQlPmwzG+XGuqcT64t2coO
         ZoVTe4yO4rWTTyoU5SrCW1jxBx97cvbQdbxTCOiEaACCXpDGkzeO0qUtjNBKOunW9ZC3
         i1I2E+1b62MMdtaxquKC4V+lO7glQjorfqtHOH/TOqsZPIN1z8eeRF5t4mFhplcClZaC
         e8gKj2rlSq40AfiMFPNmknDkDToccZiLoY6f1pf6ofGVuN6HF1/ZqYfxhP6fozHoYEtk
         OTbA==
X-Forwarded-Encrypted: i=1; AFNElJ/3+J/GTUbscwic9UB49DZG8UGSw70jlnnFrl//Nxs0xmEN6o6odz+tnW1QpHUVSfWXvHiXswHADJsjM8gB@lists.linaro.org
X-Gm-Message-State: AOJu0Yyqs9a9tYwzFn+Ixa27Bl0MypFC7M9B6/y+QSg1ed3rodAPbzeV
	Z8nABcfo5VF7WL2/buo1MKiI6cZzF2F0KMcswTnb792T75QbnNF9Q59b2qqaqFTRT88AQFu78gX
	3vFDZSTRbhVhgpRen15AUX8jn06ozk34=
X-Gm-Gg: Acq92OG3Dcs6nmrfqcoW6nNXhczZrrpjVvdU6ShAjJLRbHnd5a/mO4rpBiNuezw8dS5
	4FM6nSsx+Yy7j3hZx7vgS5P+P77zT8VZ6STQSuI/+WYOXt70+2illX255vEoTxaJhZHne9IVlf3
	ZiEjmoPNYxxiSONgBH9gFnQeNKqPIU9JCO7OQXgk7Blppj27SP0rBD44TTEQfuL4rdfNkkktkdA
	sip3GscwVwNABO+RVrkXnjmI+RD6YtD8EfIWbGcSxun/5mZzGDHsrXn18IGeEm5/UKg2y5DGZyy
	yn0VAanQJVLifH41LAie5kz5tUkc0X7egxFGkNJshoBx572OzA5jeT8GZA5btgzLKMr5NRkOtL4
	7b11aEwShGJduKxZKzUvZuNw=
X-Received: by 2002:a05:7300:641a:b0:304:1d92:42ab with SMTP id
 5a478bee46e88-3081ff5f11fmr1542136eec.2.1781339660064; Sat, 13 Jun 2026
 01:34:20 -0700 (PDT)
MIME-Version: 1.0
References: <20260610162433.923550-1-lyude@redhat.com> <20260610162433.923550-4-lyude@redhat.com>
 <DJ7AXOH0W92V.1L1869KO4C1H9@garyguo.net> <DJ7CJCZRHT1R.3LZDILZ7HTXQ3@kernel.org>
In-Reply-To: <DJ7CJCZRHT1R.3LZDILZ7HTXQ3@kernel.org>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Sat, 13 Jun 2026 10:34:06 +0200
X-Gm-Features: AVVi8Cc-0p_Glp23G0kVyr_DFh7-Z-_yXR6xtOVae_M3Gc4DHlyl43G8aBfq8YI
Message-ID: <CANiq72mffbi2BV9epfZtN1qmjM28B6qUp-5tNGj=VBTimL-nYA@mail.gmail.com>
To: Danilo Krummrich <dakr@kernel.org>
X-Spamd-Bar: ----
Message-ID-Hash: D7HBARLOMMTCRSO65ADMAPEOMFQYBIPA
X-Message-ID-Hash: D7HBARLOMMTCRSO65ADMAPEOMFQYBIPA
X-MailFrom: miguel.ojeda.sandonis@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Gary Guo <gary@garyguo.net>, Lyude Paul <lyude@redhat.com>, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, nouveau@lists.freedesktop.org, Alexandre Courbot <acourbot@nvidia.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, driver-core@lists.linux.dev, Miguel Ojeda <ojeda@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Alice Ryhl <aliceryhl@google.com>, Simona Vetter <simona@ffwll.ch>, linux-kernel@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, "Rafael J . Wysocki" <rafael@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>, Benno Lossin <lossin@kernel.org>, linaro-mm-sig@lists.linaro.org, Mukesh Kumar Chaurasiya <mkchauras@gmail.com>, Asahi Lina <lina+kernel@asahilina.net>, Daniel Almeida <daniel.almeida@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v20 3/4] rust: faux: Allow retrieving a bound Device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/D7HBARLOMMTCRSO65ADMAPEOMFQYBIPA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:dakr@kernel.org,m:gary@garyguo.net,m:lyude@redhat.com,m:dri-devel@lists.freedesktop.org,m:rust-for-linux@vger.kernel.org,m:nouveau@lists.freedesktop.org,m:acourbot@nvidia.com,m:christian.koenig@amd.com,m:driver-core@lists.linux.dev,m:ojeda@kernel.org,m:maarten.lankhorst@linux.intel.com,m:aliceryhl@google.com,m:simona@ffwll.ch,m:linux-kernel@vger.kernel.org,m:sumit.semwal@linaro.org,m:linux-media@vger.kernel.org,m:rafael@kernel.org,m:tzimmermann@suse.de,m:mripard@kernel.org,m:airlied@gmail.com,m:lossin@kernel.org,m:linaro-mm-sig@lists.linaro.org,m:mkchauras@gmail.com,m:lina+kernel@asahilina.net,m:daniel.almeida@collabora.com,m:gregkh@linuxfoundation.org,m:lina@asahilina.net,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[26];
	FORGED_SENDER(0.00)[miguelojedasandonis@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[garyguo.net,redhat.com,lists.freedesktop.org,vger.kernel.org,nvidia.com,amd.com,lists.linux.dev,kernel.org,linux.intel.com,google.com,ffwll.ch,linaro.org,suse.de,gmail.com,lists.linaro.org,asahilina.net,collabora.com,linuxfoundation.org];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miguelojedasandonis@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 795E567E250

T24gRnJpLCBKdW4gMTIsIDIwMjYgYXQgMTA6MTfigK9QTSBEYW5pbG8gS3J1bW1yaWNoIDxkYWty
QGtlcm5lbC5vcmc+IHdyb3RlOg0KPg0KPiBBcyBmYXIgYXMgSSdtIGNvbmNlcm5lZCB0aGVyZSdz
IG5vIG5lZWQgdG8gZG8gdGhhdCBmb3IgdGhpbmdzIHRoYXQgYXJlIG5vdA0KPiByZW5kZXJlZCBh
bnl3YXkuIEJ1dCBhbHNvIGZlZWwgZnJlZSB0byBkbyBpdCBhbnl3YXkgb2YgY291cnNlLg0KDQpJ
dCBpcyBub3QgYSBodWdlIGRlYWwgaWYgdGhlcmUgYXJlIGdhcHMgaGVyZSBvciB0aGVyZSwgYnV0
IHdlIHVzZQ0KTWFya2Rvd24gaW4gY29tbWVudHMgdG9vIGZvciBjb25zaXN0ZW5jeS4NCg0KV2hh
dCB3ZSBkb24ndCBkbyBpcyBpbnRyYS1kb2MgbGlua3MgdGhlcmUgLS0gaXQgd291bGQgaGF2ZSBi
ZWVuIG5pY2UNCmlmIGBydXN0ZG9jYCBjb3VsZCB1c2UgdGhvc2UgaW4gY29tbWVudHMgZm9yIHRo
ZSBzb3VyY2UgdmlldywgYnV0IGl0DQpkb2Vzbid0LCBhbmQgd2hpbGUgSSB0YWxrZWQgd2l0aCB1
cHN0cmVhbSBhYm91dCBpdCwgaXQgaXNuJ3QgbGlrZWx5IGl0DQp3aWxsIGhhcHBlbiBzb29uIGlm
IGF0IGFsbC4uLg0KDQpDaGVlcnMsDQpNaWd1ZWwNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AA87BC58138
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Nov 2025 15:55:23 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D1C813F85F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Nov 2025 14:55:22 +0000 (UTC)
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by lists.linaro.org (Postfix) with ESMTPS id A9A083F80D
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 14:53:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=WuNTc0l3;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.218.51 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b73161849e1so148161366b.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 06:53:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763045621; x=1763650421; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2ma830UDBT4pjVp7KvmyTGIRgR1+38znq+/rAoJE0o0=;
        b=WuNTc0l3mDO22j/S0ELfYU1iapvn6kgZhSoJ8T5S4S0ijIRwDe0j0ST5k32KI3TGkS
         boKoynogWo9ov40fy3u4QOVFBvvT1Df5QUfAJ5wnWI98bn4x9VBpfW4Yohww0wNWyaKj
         P7gs9G5ed6CkgMedjEZuncCtRTAGZSyZTSB5rvXYnSyG0LKe5Hsr0wTkyl3rKMKcoNha
         MYXV0/7MiusMjfTbhyVd7hIGd+2CZfDIqjLFfPA+/RlPead1O3fgQCznZI/q1BjlakNk
         yblS2oTa9pGjtGW3BEP2KbmCQSj1wa6yf8Y73mc0VDM+Q2OKA4g9Ts8L1x+hglhCtlzD
         MscA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763045621; x=1763650421;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2ma830UDBT4pjVp7KvmyTGIRgR1+38znq+/rAoJE0o0=;
        b=SCE8YEU028OqWtAY+E6+JtjEC+N4vH5F0CY1gc9vjO3i5sa5AMO/KoNDkCQ7Xz4YZU
         J9hAPrP7cIWtQDpnFPYNbEklrQgexeYA/14ws2kZ7iavz1EovTTWqteQvF+wkNxkr8dZ
         Iv0u2JXLAflKDqFmS3QDhuN0d8ird1ztzXjkFbi5Xt3SBgzGgi/UVw1EOJc+C9sWCicf
         WbODk+GPZNuzQtOPKsCO88SGoeI7VzicI5It3pM/X1OqrCNbKlqaJsLgj2EtlPDx8tmj
         PGheLu2olCDIr+h0S0t4VvtB/tT38iL7xtAZaJMCn+jj5cqN7hHMESXKZzn+DxstT1pS
         vhXQ==
X-Forwarded-Encrypted: i=1; AJvYcCUfrz3aeyAMnvTaWGA00rK5yg/6Av0OxyvU4BtQ5eil3o+GfkYMZjaXSHi9EoCqf8hve3cF1Mmz/6Njincq@lists.linaro.org
X-Gm-Message-State: AOJu0Yz02+RzvZGBAsLRPPjtl89Tt+oavy1rXICL2e6R+ZJ8AgfHT4uY
	+38XVrmGpmumQpRUekBdGG5yckioMzdwMYgCM49oo6kwo/gF9s6LNZnN
X-Gm-Gg: ASbGncss0REWKPGbprlCnSeCqDJiihgJMMEEPWLocv97ZrIquYBcH8YH8uHBxZOK1M3
	Ld3O638UiJjNRfPQ90Pg7oflxu10/JE2V+kh89puqv3K7r/lt1wEXpv0rc+krrPXaC06Jg5TGDq
	jyZOJi5Wxlh61iLgcCr/tamd3jODgIeNlhrodvI1fPKgOKH+PleVcHzBOGG0diNYa4CcneaudZZ
	fFcJSQFIVAtXHXu821k4iUTWx1oSxOVb6xsvY5qIIFcfGdP/cEFSS3v4wXypKs6WSOiHkfmyj+h
	vfBckMqbBLVm47U9UwbIIrWbNM6yrimZitOrkg6nnITmgTScIDi8EmCZJEf1NrPOlX/CTFLIFhh
	qudvUOJsrHSJAjIA52VP4x6JdmcDi2BpO/84lmsycsn7xYwmmBpUG3Nzi6gr3FHvHRzs08tVJBp
	fzdFLkardwgSc=
X-Google-Smtp-Source: AGHT+IGmTxRltBDCj6Rm69m8Ui1k6YY9cv5jYHS0CdN2mzixtVtyrx5F6p+iFVQIfWYtnTMy2kFBfw==
X-Received: by 2002:a17:907:96a1:b0:b72:1ced:f213 with SMTP id a640c23a62f3a-b7331a5d757mr684327766b.37.1763045620550;
        Thu, 13 Nov 2025 06:53:40 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:15aa:c600:cef:d94:436c:abc5])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b73513b400fsm173747166b.1.2025.11.13.06.53.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 06:53:40 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	alexdeucher@gmail.com,
	simona.vetter@ffwll.ch,
	tursulin@ursulin.net,
	matthew.brost@intel.com,
	dri-devel@lists.freedesktop.org,
	amd-gfx@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	sumit.semwal@linaro.org
Date: Thu, 13 Nov 2025 15:51:44 +0100
Message-ID: <20251113145332.16805-8-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251113145332.16805-1-christian.koenig@amd.com>
References: <20251113145332.16805-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A9A083F80D
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.51:from];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[mailbox.org,gmail.com,ffwll.ch,ursulin.net,intel.com,lists.freedesktop.org,lists.linaro.org,linaro.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: BCSYTJOP3C27MAWUOITT25QSYQK4DQHB
X-Message-ID-Hash: BCSYTJOP3C27MAWUOITT25QSYQK4DQHB
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 07/18] dma-buf: use inline lock for the dma-fence-chain
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BCSYTJOP3C27MAWUOITT25QSYQK4DQHB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VXNpbmcgdGhlIGlubGluZSBsb2NrIGlzIG5vdyB0aGUgcmVjb21tZW5kZWQgd2F5IGZvciBkbWFf
ZmVuY2UgaW1wbGVtZW50YXRpb25zLg0KDQpTbyB1c2UgdGhpcyBhcHByb2FjaCBmb3IgdGhlIGZy
YW1ld29yayBpbnRlcm5hbCBmZW5jZXMgYXMgd2VsbC4NCg0KQWxzbyBzYXZlcyBhYm91dCA0IGJ5
dGVzIGZvciB0aGUgZXh0ZXJuYWwgc3BpbmxvY2suDQoNClNpZ25lZC1vZmYtYnk6IENocmlzdGlh
biBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NClJldmlld2VkLWJ5OiBUdnJ0a28g
VXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaWdhbGlhLmNvbT4NCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1
Zi9kbWEtZmVuY2UtY2hhaW4uYyB8IDMgKy0tDQogaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtY2hh
aW4uaCAgIHwgMSAtDQogMiBmaWxlcyBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMyBkZWxldGlv
bnMoLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtY2hhaW4uYyBi
L2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtY2hhaW4uYw0KaW5kZXggYThhOTBhY2Y0ZjM0Li5h
NzA3NzkyYjYwMjUgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWNoYWlu
LmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtY2hhaW4uYw0KQEAgLTI0NSw3ICsy
NDUsNiBAQCB2b2lkIGRtYV9mZW5jZV9jaGFpbl9pbml0KHN0cnVjdCBkbWFfZmVuY2VfY2hhaW4g
KmNoYWluLA0KIAlzdHJ1Y3QgZG1hX2ZlbmNlX2NoYWluICpwcmV2X2NoYWluID0gdG9fZG1hX2Zl
bmNlX2NoYWluKHByZXYpOw0KIAl1aW50NjRfdCBjb250ZXh0Ow0KIA0KLQlzcGluX2xvY2tfaW5p
dCgmY2hhaW4tPmxvY2spOw0KIAlyY3VfYXNzaWduX3BvaW50ZXIoY2hhaW4tPnByZXYsIHByZXYp
Ow0KIAljaGFpbi0+ZmVuY2UgPSBmZW5jZTsNCiAJY2hhaW4tPnByZXZfc2Vxbm8gPSAwOw0KQEAg
LTI2MSw3ICsyNjAsNyBAQCB2b2lkIGRtYV9mZW5jZV9jaGFpbl9pbml0KHN0cnVjdCBkbWFfZmVu
Y2VfY2hhaW4gKmNoYWluLA0KIAkJCXNlcW5vID0gbWF4KHByZXYtPnNlcW5vLCBzZXFubyk7DQog
CX0NCiANCi0JZG1hX2ZlbmNlX2luaXQ2NCgmY2hhaW4tPmJhc2UsICZkbWFfZmVuY2VfY2hhaW5f
b3BzLCAmY2hhaW4tPmxvY2ssDQorCWRtYV9mZW5jZV9pbml0NjQoJmNoYWluLT5iYXNlLCAmZG1h
X2ZlbmNlX2NoYWluX29wcywgTlVMTCwNCiAJCQkgY29udGV4dCwgc2Vxbm8pOw0KIA0KIAkvKg0K
ZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLWNoYWluLmggYi9pbmNsdWRlL2xp
bnV4L2RtYS1mZW5jZS1jaGFpbi5oDQppbmRleCA2OGMzYzFlNDEwMTQuLmQzOWNlN2EyZTU5OSAx
MDA2NDQNCi0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLWNoYWluLmgNCisrKyBiL2luY2x1
ZGUvbGludXgvZG1hLWZlbmNlLWNoYWluLmgNCkBAIC00Niw3ICs0Niw2IEBAIHN0cnVjdCBkbWFf
ZmVuY2VfY2hhaW4gew0KIAkJICovDQogCQlzdHJ1Y3QgaXJxX3dvcmsgd29yazsNCiAJfTsNCi0J
c3BpbmxvY2tfdCBsb2NrOw0KIH07DQogDQogDQotLSANCjIuNDMuMA0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

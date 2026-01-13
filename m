Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id ED5BED19DA4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Jan 2026 16:23:35 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EE12740157
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Jan 2026 15:23:34 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	by lists.linaro.org (Postfix) with ESMTPS id A27E04016C
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Jan 2026 15:21:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=RHCaHsQG;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.46 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-47edd9024b1so4278195e9.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Jan 2026 07:21:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768317695; x=1768922495; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NbpPVrzPAlKs0sk1NH70zC7B/mKS9m8HRr6Hh0Ntmuc=;
        b=RHCaHsQGFCIBv+D/Wb2rwGUmMir3B/hB17b458O/9kBYsm8oTuwmWDyd87zVSp9KRt
         3ymzfYB7KOMgYafsZLcRCAXwdg2g+WKc62SgR6/QqsBrFdL6e+rRt1MyR0hBDhncApCr
         FgPDJtyQ3bZOkHA9FELmaFDLuiEGCycyJ10Hk+t1knZBuTNKeg8ebwHUnTITm4V7xo9F
         OzGSbK+i3d1i0mVXPTUOrIeN2nkK1Q1P2z6gUfsf9Zywop57B36atO8nqSMNVo7L0V+C
         fBVIuaNsYCjz5jwILTJWfZdmUF4hT3YKpAR4Le24iT7RXbDk03l/uhXFzhXjseqUBhxo
         wXLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768317695; x=1768922495;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NbpPVrzPAlKs0sk1NH70zC7B/mKS9m8HRr6Hh0Ntmuc=;
        b=YElBceC3oJkbjwQy7QS7EDIRERrv4AsULXQJO5rPBiFf/40dxK+ED6k2+zc8r4vsXE
         XClw0qnoE9f5qbzgLR86JgsAXP6r0dPM2xeYiry0P4r1GQwQ+Cl+LLbuA+zsewxO6wZJ
         oFCDF3tUfirVfq8R8AWqjkwpfwtn7xJGQHbhY+1CFw/gg4d1a0SkUUQK0RMS01XxIVwJ
         PYmJF9Ems35VVY+9aL+yFgMZxqp1O4ab0qssa/v+ArWlKzpJX/dw+7Z6OScjUHrE9nco
         nE7SictsCSQF1F+esDYzj7KUpRYenpRvKoZQl1qLQlbVaNEHIG9utHDIFSmXNPxNbUXU
         tvNg==
X-Forwarded-Encrypted: i=1; AJvYcCVLuUvC9ooyHxDUcj0I0Mh1NIM5+W1xDH4bV8nXNKGCNyGm2S3c0flD2QJpAPskLVikVZFFwF6vtxVAuMKE@lists.linaro.org
X-Gm-Message-State: AOJu0YzKshcB9haNC4v7vgUiQcFw7GVNPrfMAwYl63rm8jMl2tycKefT
	Bz1aX0mGavoXCC057GdwUnGrrkybFLylTYqc21xws6Al6pFpwqTDYF07
X-Gm-Gg: AY/fxX5KzdH7jOUidGp466+oJPJNUsm/n7N9uACpEdXpszyADlHxp1mNHWc3hc9hFA4
	HkprKtk/iISMgl3igl0IfLbRKD1Q9Uo0/FBeYL+9sXP54um1xkLT2576Xkc1YK8WuYsGp8bF8uv
	QOP3H8P+UPQvI7341Igv6yth71OPsgLb4clnI4UnS58bPYAzD4vSOE6lAIybPbdrKBoKXdU9Fl6
	FD+BGWY0mkdazBZIVtbRIdJJAoGtgbr4KD6lCGHRkOgkKmWDG3dKz9eQeqPtlPdkuant3ldWToD
	aNDLtR7hBXM/BaRYbpKiTmpx34HnAq9ai7lH5xkP8T9EhrtffUChVW+K1xZ5sz8QGGZJbmFIQoK
	k4/BQrzL5SvmxZa1rnIXKlGIKcooJZrfgSwG+/eWZn6sxP5MrFuBCs+bbrzX+Z5pwSUJbO/MoJW
	qKgqpGUUBi23SRrpVNDgWUHTg=
X-Google-Smtp-Source: AGHT+IFfDcW9DTWNYbgsZJYWnfp9RR0W8unVvXlkipYHM1zn9dG94+cG+2Ps331dUSUgps/rEuOAUQ==
X-Received: by 2002:a05:600c:46ca:b0:477:aed0:f403 with SMTP id 5b1f17b1804b1-47d84b0a288mr270178005e9.8.1768317694564;
        Tue, 13 Jan 2026 07:21:34 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:141c:9800:1651:dfa:9e48:25d5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47ecf6a5466sm129518405e9.11.2026.01.13.07.21.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 07:21:34 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	tursulin@ursulin.net,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Tue, 13 Jan 2026 16:16:15 +0100
Message-ID: <20260113152125.47380-9-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260113152125.47380-1-christian.koenig@amd.com>
References: <20260113152125.47380-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Queue-Id: A27E04016C
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	URIBL_BLOCKED(0.00)[igalia.com:email,amd.com:email,amd.com:mid];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.46:from];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.128.46:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[2a00:e180:141c:9800:1651:dfa:9e48:25d5:received];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DWL_DNSWL_BLOCKED(0.00)[gmail.com:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: URTPBWU52RRLW3VMYPYLG3KL5IMIU3J2
X-Message-ID-Hash: URTPBWU52RRLW3VMYPYLG3KL5IMIU3J2
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 08/10] dma-buf: use inline lock for the dma-fence-array
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/URTPBWU52RRLW3VMYPYLG3KL5IMIU3J2/>
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
YW1ld29yaydzIGludGVybmFsIGZlbmNlcyBhcyB3ZWxsLg0KDQpBbHNvIHNhdmVzIGFib3V0IDQg
Ynl0ZXMgZm9yIHRoZSBleHRlcm5hbCBzcGlubG9jay4NCg0KU2lnbmVkLW9mZi1ieTogQ2hyaXN0
aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KUmV2aWV3ZWQtYnk6IFR2cnRr
byBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpZ2FsaWEuY29tPg0KUmV2aWV3ZWQtYnk6IFBoaWxp
cHAgU3Rhbm5lciA8cGhhc3RhQGtlcm5lbC5vcmc+DQotLS0NCiBkcml2ZXJzL2RtYS1idWYvZG1h
LWZlbmNlLWFycmF5LmMgfCA1ICsrLS0tDQogaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtYXJyYXku
aCAgIHwgMSAtDQogMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25z
KC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5LmMgYi9k
cml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5LmMNCmluZGV4IDY2NTdkNGIzMGFmOS4uYzIx
MTlhODA0OWZlIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5j
DQorKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5LmMNCkBAIC0yMDQsOSArMjA0
LDggQEAgdm9pZCBkbWFfZmVuY2VfYXJyYXlfaW5pdChzdHJ1Y3QgZG1hX2ZlbmNlX2FycmF5ICph
cnJheSwNCiANCiAJYXJyYXktPm51bV9mZW5jZXMgPSBudW1fZmVuY2VzOw0KIA0KLQlzcGluX2xv
Y2tfaW5pdCgmYXJyYXktPmxvY2spOw0KLQlkbWFfZmVuY2VfaW5pdCgmYXJyYXktPmJhc2UsICZk
bWFfZmVuY2VfYXJyYXlfb3BzLCAmYXJyYXktPmxvY2ssDQotCQkgICAgICAgY29udGV4dCwgc2Vx
bm8pOw0KKwlkbWFfZmVuY2VfaW5pdCgmYXJyYXktPmJhc2UsICZkbWFfZmVuY2VfYXJyYXlfb3Bz
LCBOVUxMLCBjb250ZXh0LA0KKwkJICAgICAgIHNlcW5vKTsNCiAJaW5pdF9pcnFfd29yaygmYXJy
YXktPndvcmssIGlycV9kbWFfZmVuY2VfYXJyYXlfd29yayk7DQogDQogCWF0b21pY19zZXQoJmFy
cmF5LT5udW1fcGVuZGluZywgc2lnbmFsX29uX2FueSA/IDEgOiBudW1fZmVuY2VzKTsNCmRpZmYg
LS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1hcnJheS5oIGIvaW5jbHVkZS9saW51eC9k
bWEtZmVuY2UtYXJyYXkuaA0KaW5kZXggMDc5YjNkZWMwYTE2Li4zNzBiM2QyYmJhMzcgMTAwNjQ0
DQotLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1hcnJheS5oDQorKysgYi9pbmNsdWRlL2xp
bnV4L2RtYS1mZW5jZS1hcnJheS5oDQpAQCAtMzgsNyArMzgsNiBAQCBzdHJ1Y3QgZG1hX2ZlbmNl
X2FycmF5X2NiIHsNCiBzdHJ1Y3QgZG1hX2ZlbmNlX2FycmF5IHsNCiAJc3RydWN0IGRtYV9mZW5j
ZSBiYXNlOw0KIA0KLQlzcGlubG9ja190IGxvY2s7DQogCXVuc2lnbmVkIG51bV9mZW5jZXM7DQog
CWF0b21pY190IG51bV9wZW5kaW5nOw0KIAlzdHJ1Y3QgZG1hX2ZlbmNlICoqZmVuY2VzOw0KLS0g
DQoyLjQzLjANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==

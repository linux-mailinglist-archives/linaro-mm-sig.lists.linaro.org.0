Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF96C74B66
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Nov 2025 16:01:03 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7DF4C3F952
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Nov 2025 15:01:02 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by lists.linaro.org (Postfix) with ESMTPS id 92B233F905
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 15:00:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=PpURoRzZ;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.208.54 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-64166a57f3bso1534669a12.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 07:00:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763650822; x=1764255622; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KW+kRzBEHA4jKkrkR9ZLwv6sirYslh2oCRpUNEgLzxs=;
        b=PpURoRzZYLknYDH1kD46hcz7zFj4INIlOOHroNwJrZCj5PTK60b/VgDypO348SdC8P
         KoSfexG0Tf4md18kiGr+m+AVkhEB3PGbzhY33cVzL8C/plyrqZq1w91Kpl+rLeZiLwvi
         38dls60JeOqpu2VY1aJEG0x8DEze6qumx1iDoCHcqhEMHpuM/5mY0jSQvH0umItVlc7S
         PLWV5ugLgIocJ18W66TxV1g3L1oR4fDpPCtL7J7PuxFPA/r6/M6pQCKF8+pmlcsmTu+s
         IFCWs4ML2DKwapJny86tiTIlzJiIYyfHYB3Ty9FVWu9RHsxKFIzJ5ULybXdVOSaHM8wU
         zVDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763650822; x=1764255622;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KW+kRzBEHA4jKkrkR9ZLwv6sirYslh2oCRpUNEgLzxs=;
        b=MS/c27lC+ofmfjArqywS32I37FnPd0fteQh06lp5Qa2cwB3JjuNiaeYROBEagVOdeC
         HDMBhxW6k+JbiTVklODqSxzvAPG329Uf/BTytuOhRKv7qs5IMMZiQdvSEmL1A/EtLsJ7
         Bun8/waNVFP5hR0OhgRiVRBYd60QIYSOX8QIVCdAY0RbzmGXXQDvLGib7kk/uN0jWJgc
         V3OazUhFRYfaMmQrZh/4gaJiQEVC4oVAiOllVLiqL/6ZwMsehT9vdqWHAPTpe9bSfBIT
         2vpnJvsJ9XfroI1nVKtdbSpJiUBLvxRb9rUiU/bIBNG4l0YdTXUpyAYGDxun7SDf4H/n
         jxQQ==
X-Gm-Message-State: AOJu0Yw072Ic/sJwDeGM9Y7XcZTA2pCBNIBrBtXZg9mjrdr4Pn9KC1+G
	sMewpv6FTaT4etU4l7hAKxiIDQrMcQmWKn6aRF52dCBPMJLGmLh5tNeXQhPXqg==
X-Gm-Gg: ASbGncuxak65Cd2fYJU0MtwpDEQ3qx4XQxeClAu848BKSgS1XPQ+ZbGgRrEQCaR+Q9U
	hk0ZAvTZc7vS8hlmozV+oq9pfyZcrbPLGMkex9dsJkPAIoLO/UhfK4hYe/BW8wKkbJGIBt52nvy
	AlIfMIDP0WQmHbrUErh8UhuiT+a+VZwfBp80jHWiQyM7avoWopJ0ntwF05koqrnORS5wrcuRRyn
	NM7d4gOG+rSITbXN4vmbSeY8uecinDKT+Vl6jGtlIgW3okv5XL6etAS2uUUAZpPCd1vuqTFpO4u
	RepHi05eOwe4CrlCzSXaRrw72bGPTTWQGXCWFZMw+mH5zNNd+ZLeLnM8TQDDacQY+1CP+FG6T8w
	hzW95wGelLX1abt30J6lQWNxOMXe6b/UVfHiZWfXjJj3+gb1KHdDoZPKhoAkWh8mdKtiG9VPq0j
	zTY5Lkr11+PogP2Cg5/lVOMKKq2yDJWrpsll8=
X-Google-Smtp-Source: AGHT+IE6prXF8s/y7WhNH087a0LGD4PggM53BQrC7EcC+xM7xmoqpQMJoNG0KtFEZd2Ox+C7TxsuKQ==
X-Received: by 2002:a05:6402:5406:b0:640:a7bc:30c5 with SMTP id 4fb4d7f45d1cf-6453647ba22mr3201568a12.28.1763650822418;
        Thu, 20 Nov 2025 07:00:22 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:154c:c900:7aba:c4b7:a402:3cd2])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6453645f2easm2205878a12.33.2025.11.20.07.00.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Nov 2025 07:00:21 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@kernel.org,
	alexdeucher@gmail.com,
	simona.vetter@ffwll.ch,
	faith@gfxstrand.net,
	sumit.semwal@linaro.org
Date: Thu, 20 Nov 2025 15:41:07 +0100
Message-ID: <20251120150018.27385-2-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251120150018.27385-1-christian.koenig@amd.com>
References: <20251120150018.27385-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.54:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,ffwll.ch,gfxstrand.net,linaro.org];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 92B233F905
X-Spamd-Bar: ---
Message-ID-Hash: KFID5SICCTHV4Z3GRJ6XC5WUWT62M4OW
X-Message-ID-Hash: KFID5SICCTHV4Z3GRJ6XC5WUWT62M4OW
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 1/4] dma-buf/fence: give some reasonable maximum signaling timeout
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KFID5SICCTHV4Z3GRJ6XC5WUWT62M4OW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QWRkIGEgZGVmaW5lIGltcGxlbWVudGF0aW9ucyBjYW4gdXNlIGFzIHJlYXNvbmFibGUgbWF4aW11
bSBzaWduYWxpbmcNCnRpbWVvdXQuIERvY3VtZW50IHRoYXQgaWYgdGhpcyB0aW1lb3V0IGlzIGV4
Y2VlZGVkIGJ5IGNvbmZpZyBvcHRpb25zDQppbXBsZW1lbnRhdGlvbnMgc2hvdWxkIHRhaW50IHRo
ZSBrZXJuZWwuDQoNClRhaW50aW5nIHRoZSBrZXJuZWwgaXMgaW1wb3J0YW50IGZvciBidWcgcmVw
b3J0cyB0byBkZXRlY3QgdGhhdCBlbmQNCnVzZXJzIG1pZ2h0IGJlIHVzaW5nIGEgcHJvYmxlbWF0
aWMgY29uZmlndXJhdGlvbi4NCg0KU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KLS0tDQogaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaCB8
IDE0ICsrKysrKysrKysrKysrDQogMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKykNCg0K
ZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmggYi9pbmNsdWRlL2xpbnV4L2Rt
YS1mZW5jZS5oDQppbmRleCA2NDYzOWUxMDQxMTAuLmIzMWRmYTUwMWM4NCAxMDA2NDQNCi0tLSBh
L2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCisrKyBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNl
LmgNCkBAIC0yOCw2ICsyOCwyMCBAQCBzdHJ1Y3QgZG1hX2ZlbmNlX29wczsNCiBzdHJ1Y3QgZG1h
X2ZlbmNlX2NiOw0KIHN0cnVjdCBzZXFfZmlsZTsNCiANCisvKioNCisgKiBkZWZpbmUgRE1BX0ZF
TkNFX01BWF9SRUFTT05BQkxFX1RJTUVPVVQgLSBtYXggcmVhc29uYWJsZSBzaWduYWxpbmcgdGlt
ZW91dA0KKyAqDQorICogVGhlIGRtYV9mZW5jZSBvYmplY3QgaGFzIGEgZGVlcCBpbnRlciBkZXBl
bmRlbmN5IHdpdGggY29yZSBtZW1vcnkNCisgKiBtYW5hZ2VtZW50LCBmb3IgYSBkZXRhaWxlZCBl
eHBsYW5hdGlvbiBzZWUgc2VjdGlvbiBETUEgRmVuY2VzIHVuZGVyDQorICogRG9jdW1lbnRhdGlv
bi9kcml2ZXItYXBpL2RtYS1idWYucnN0Lg0KKyAqDQorICogQmVjYXVzZSBvZiB0aGlzIGFsbCBk
bWFfZmVuY2UgaW1wbGVtZW50YXRpb25zIG11c3QgZ3VhcmFudGVlIHRoYXQgZWFjaCBmZW5jZQ0K
KyAqIGNvbXBsZXRlcyBpbiBhIGZpbml0ZSB0aW1lLiBUaGlzIGRlZmluZSBoZXJlIG5vdyBnaXZl
cyBhIHJlYXNvbmFibGUgdmFsdWUgZm9yDQorICogdGhlIHRpbWVvdXQgdG8gdXNlLiBJdCBpcyBw
b3NzaWJsZSB0byB1c2UgYSBsb25nZXIgdGltZW91dCBpbiBhbg0KKyAqIGltcGxlbWVudGF0aW9u
IGJ1dCB0aGF0IHNob3VsZCB0YWludCB0aGUga2VybmVsLg0KKyAqLw0KKyNkZWZpbmUgRE1BX0ZF
TkNFX01BWF9SRUFTT05BQkxFX1RJTUVPVVQgKDIqSFopDQorDQogLyoqDQogICogc3RydWN0IGRt
YV9mZW5jZSAtIHNvZnR3YXJlIHN5bmNocm9uaXphdGlvbiBwcmltaXRpdmUNCiAgKiBAcmVmY291
bnQ6IHJlZmNvdW50IGZvciB0aGlzIGZlbmNlDQotLSANCjIuNDMuMA0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

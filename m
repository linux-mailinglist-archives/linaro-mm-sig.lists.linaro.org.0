Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8/iWBNDNO2qQdQgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Jun 2026 14:30:08 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 918DF6BE1CA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Jun 2026 14:30:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=b4wZdkoS;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A8DC340A76
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Jun 2026 12:30:06 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	by lists.linaro.org (Postfix) with ESMTPS id E189C40A69
	for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Jun 2026 12:29:24 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-45ef189aa1cso758840f8f.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Jun 2026 05:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782304164; x=1782908964; darn=lists.linaro.org;
        h=content-transfer-encoding:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=f2YBNpTeLYg62fGg7sbOleS8wV+O2KANj9vsOiEQ0A4=;
        b=b4wZdkoSiWAQNeloDDAoc+t7IOmHV7U29jv+4BVOCIW3bJQP0HUXt/I+M7cx1A7MJa
         d/AqMjCBY2KWU3hr+DYNQraRguLFuhXWpvNORZO73EygsDygWbw8dp8Ej2QaytBdnhjb
         PDRkNX3SOppfRyPty0ih3yFtwNem9kjOQ+wRkkSWE8fUTdE1Yd2lhs/MVrBTzKxWOv6w
         /BTo1alFYcKJbmgmKEex7pUWcPwyKk5kCP84G+7rjCRX8Ba3rDBvBVF1T2GKbNKGFRlJ
         ri4Wtarfiy7sLZEcoQhvZNu5+e8+by5oXytDR45bWPLN+ZwFYnvwp+W2+BMbMf9iuaCN
         V/sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782304164; x=1782908964;
        h=content-transfer-encoding:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f2YBNpTeLYg62fGg7sbOleS8wV+O2KANj9vsOiEQ0A4=;
        b=Qly9d4BsE4hQbrd3LTxMa9qg2mVamguvgkLzIlDAIBvJzqp3Po7ZhZn4pzxbKSHkDa
         23xkIkWK7HtyVBRHD2K5tRWvmX9GYye9yLsPS8TRgv9EANwg/X4vDIGO+DZu5p2HI55k
         88dazzK5aJnVd8aOQfa992oTbRTa3FsgDOlV5R4jUXfaGhT/e5OU20IEjZcTq32X7BsD
         nJYsyWkJNUjazroUN0qja1On2BjKlVpGzf2hiRJp7jifzFqbJYz1ErdsD0FRdT0rNH8B
         nLUU1hw9tuwvVzlkntgzBeMgkRzP4ix8ltsGZ8bOcEzL4U8yXQ925PsMtmFmaIuI0cWU
         9Eyw==
X-Forwarded-Encrypted: i=1; AHgh+RqMsqmx1qCMfOy3DFQSouiMk4Tx/eSqgJdGz9H4thIQnwSW2bMZKJ2uPDijsD4BoZc8FivfNztilHkfkpRO@lists.linaro.org
X-Gm-Message-State: AOJu0YxgQ5uyAoBKWOQs3PjelmRMdrv6wHvWbkiYAqXM4NQnz0JpEJpV
	9Eik3BwYOTyaIaeX60J9DfSvbdyf6NA+hB5QcLKbQaIKoXzQuwsGk93x
X-Gm-Gg: AfdE7ckkR/21wDrJZWwckZM8/7lKd0Ar3NHXE2QugH1+srPOM95GbhTdGEdxzc+j4v3
	2xLr9wNVm5YHNuwY3P1c8eWpO8jp2YWsospdzaLrlXKDBCi10zYT/ZUXOez0Oepu/jgxJy3Foej
	h8oVJFUR1pCtHHCMh1jBa7Q2kMbfIAuIn6BmchitGGgErTTeLEYc6JNClxDpNdltQ8DI4MG3lWk
	7FVnV6nHltbMaB/kURxZu/dUXBkP2PQtW7KYHm7o5E+B+eiWq0ECdcevKkC9VrvmHvK6BLOD9OZ
	GyEuy+H2WeL2czw8Sv0ve7unLOUD/U1R7qGt/1Thr1bphrTWGft/oYY74xy1ViMDOdCpSNmZShx
	DlyQQP+k1RKshIIm9i/kAS1ZdcXYMVN4epAcdveFajbR/TksTx2gg6BNtabQAV9br12PVFgwgV7
	38SdYFA8WpFni82Uyeq7bnc0/1sA==
X-Received: by 2002:a5d:490e:0:b0:461:a169:f965 with SMTP id ffacd0b85a97d-46c0b8b182bmr3421914f8f.34.1782304163747;
        Wed, 24 Jun 2026 05:29:23 -0700 (PDT)
Received: from able.fritz.box ([2a00:e180:157e:3500:2be7:1a89:41c5:9239])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-46c9787dddbsm3896530f8f.3.2026.06.24.05.29.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2026 05:29:23 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@kernel.org,
	simona@ffwll.ch,
	sumit.semwal@linaro.org,
	tvrtko.ursulin@igalia.com,
	dakr@kernel.org
Date: Wed, 24 Jun 2026 13:13:28 +0200
Message-ID: <20260624122917.2483-5-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260624122917.2483-1-christian.koenig@amd.com>
References: <20260624122917.2483-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Spamd-Bar: ----
Message-ID-Hash: HFN3H4ZQL5DR3YVVJK3S476UY4HJZTC7
X-Message-ID-Hash: HFN3H4ZQL5DR3YVVJK3S476UY4HJZTC7
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: christian.koenig@amd.com
Subject: [Linaro-mm-sig] [PATCH 04/10] drm/nouveau: use dma_fence_test_signaled_flag()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HFN3H4ZQL5DR3YVVJK3S476UY4HJZTC7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.69 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:phasta@kernel.org,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:tvrtko.ursulin@igalia.com,m:dakr@kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[ckoenigleichtzumerken@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[christian.koenig@amd.com];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ckoenigleichtzumerken@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:replyto,amd.com:email,amd.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 918DF6BE1CA

SW5zdGVhZCBvZiBkbWFfZmVuY2VfaXNfc2lnbmFsZWRfbG9ja2VkKCkgdXNlDQpkbWFfZmVuY2Vf
dGVzdF9zaWduYWxlZF9mbGFnKCkuDQoNClRoZSBleHRyYSBwb2xsaW5nIGNoZWNrIHNlZW1zIHVu
ZWNlc3NhcnkgZm9yIHRob3NlIHVzZSBjYXNlcy4NCg0KU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFu
IEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KLS0tDQogZHJpdmVycy9ncHUvZHJt
L25vdXZlYXUvbm91dmVhdV9mZW5jZS5jIHwgMiArLQ0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMSBkZWxldGlvbigtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL25v
dXZlYXUvbm91dmVhdV9mZW5jZS5jIGIvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVhdV9m
ZW5jZS5jDQppbmRleCBlZGJlOWUwOGJhMGYuLjY2MDFlZjUyZTMwMSAxMDA2NDQNCi0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfZmVuY2UuYw0KKysrIGIvZHJpdmVycy9ncHUv
ZHJtL25vdXZlYXUvbm91dmVhdV9mZW5jZS5jDQpAQCAtODMsNyArODMsNyBAQCBub3V2ZWF1X2Zl
bmNlX2NvbnRleHRfa2lsbChzdHJ1Y3Qgbm91dmVhdV9mZW5jZV9jaGFuICpmY3R4LCBpbnQgZXJy
b3IpDQogDQogCXNwaW5fbG9ja19pcnFzYXZlKCZmY3R4LT5sb2NrLCBmbGFncyk7DQogCWxpc3Rf
Zm9yX2VhY2hfZW50cnlfc2FmZShmZW5jZSwgdG1wLCAmZmN0eC0+cGVuZGluZywgaGVhZCkgew0K
LQkJaWYgKGVycm9yICYmICFkbWFfZmVuY2VfaXNfc2lnbmFsZWRfbG9ja2VkKCZmZW5jZS0+YmFz
ZSkpDQorCQlpZiAoZXJyb3IgJiYgIWRtYV9mZW5jZV90ZXN0X3NpZ25hbGVkX2ZsYWcoJmZlbmNl
LT5iYXNlKSkNCiAJCQlkbWFfZmVuY2Vfc2V0X2Vycm9yKCZmZW5jZS0+YmFzZSwgZXJyb3IpOw0K
IA0KIAkJaWYgKG5vdXZlYXVfZmVuY2Vfc2lnbmFsKGZlbmNlKSkNCi0tIA0KMi40My4wDQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=

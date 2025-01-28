Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E40EA20840
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Jan 2025 11:08:54 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7FEEB3F604
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Jan 2025 10:08:48 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	by lists.linaro.org (Postfix) with ESMTPS id D5CF23F50E
	for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Jan 2025 10:08:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=JqFTGXSJ;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.221.46 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-385dece873cso2888190f8f.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Jan 2025 02:08:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738058915; x=1738663715; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=h2yOvoDnInS5YyguD1gPdiTImuorPx6Slh8QNA5BfCg=;
        b=JqFTGXSJZoq5pLrq6pBXEfLS+42L82GAU2YpDGXVqtyBPO+XejZHZ2did1P2wXoZqz
         oyC3k/J4SjeH1YDNMc9Z7tTpzq0JjA38MbO3SUrTLbRy+j+yEEEK6YLyZegf8Zx3AHDE
         Bcz5oU6sF5QmsC7OIdk3gOy8+sUoOK2AYOCCmJrnnbkNzjHe6fmCCQB4HnylqEJwTx7D
         QElXDkeLmVExqx0CwTf2ob9eC7y9XWSB5USi8YcQSMjmYvNcpPRNwNdH20F7S68cS15V
         FgnyNmI1lO8zWonPS9fmzdwue39p6RQUYOrKgi5/kIhkEkvbQygSMl1AyiDCERQ7rTW7
         /kQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738058915; x=1738663715;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h2yOvoDnInS5YyguD1gPdiTImuorPx6Slh8QNA5BfCg=;
        b=n1Nys63VKcT1QVq/I5cY83EWVM1kvMET0XpYbXMiuD6k58udCQe59Jp+pZP6ZTUHSw
         3P+A/tZBlkDde80NjAlwoBS8KWUU0FI4baLo5tX3nxGrdrjDuZBOsBZpNwez65o9+98n
         +bE19c9mn6vpTrEO81VxReeZmxKoi4PLvOxjiuNKUjZe8TzPL10dV+VuxPgAM2FAxvoD
         hPUiKrl/c5idpuY3h4OiKmLmGjM6XA7S/NsEe/5rZGGUGxLn3Zh5odVkmh7xXSk0LgdB
         oxKESUUWITX5eCDWxv/DKJ5b+4xnIe0xStYnTpgf4SjPQpgHpwCXR9g4UCLOsrAEowU3
         zC7g==
X-Forwarded-Encrypted: i=1; AJvYcCVfAm1m+thpCKB8lLVYnYD4qTm3APSvBb1MZtechtA7gVhHz+ZLg7tcxdl+sXz8RhN+tZk5zLFFm1LOKjcA@lists.linaro.org
X-Gm-Message-State: AOJu0YyTXC8Bj43Nek/0eRXwN0cGoFZNReMGPjsUrkEUnH6+2leDk7it
	ipxiZYsDbGCZxB6Yk9jPXj+6vST9wasAgAdhR2aew2ZFH6cqVcHg
X-Gm-Gg: ASbGncubct6p0RG6yoVJSWUwGbDY+aPQgdSJ047oa9h/ztDvT6d0W47jNEYTOkIYuPq
	YLRP28gTtsTBjD8/41uBlsbLHigPSt5WBRWFQwDtAOZ0yojBp+WMLNT4k0c57cwDcJQl7U/QSWs
	LcEcVtAZuxYqMtBeO0jxKB0YuOyM9mYuJXZxl5mP1mF09iQif4WcfTa2P+xYhK5KaQsLoQ0fl2B
	AHvPkTbT6/FU/4m4qfvADMurJkGkM+F3rd+FMLw5wIezWVYxNrmXrSeOMKFCVM1/p1zMsZ1yy0X
	/6e2OlqX4udLPQuNkBJs74BBfw==
X-Google-Smtp-Source: AGHT+IHEilQrm8VE74CTRIVJXbYI24X5hbrOC34o8rHdp8QOyp8603efRQrzisOdGe1zt5eY0BMEKA==
X-Received: by 2002:a05:6000:1faa:b0:385:e013:39ec with SMTP id ffacd0b85a97d-38bf5656b93mr39373974f8f.8.1738058914547;
        Tue, 28 Jan 2025 02:08:34 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:154d:4600:f97b:2e:9c49:a657])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38c2a17d6b2sm14023800f8f.34.2025.01.28.02.08.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jan 2025 02:08:34 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: marek.olsak@amd.com,
	l.stach@pengutronix.de,
	sumit.semwal@linaro.org
Date: Tue, 28 Jan 2025 11:08:33 +0100
Message-Id: <20250128100833.8973-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D5CF23F50E
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RBL_SENDERSCORE_REPUT_6(1.00)[209.85.221.46:from];
	MID_RHS_MATCH_TO(1.00)[];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	DKIM_TRACE(0.00)[gmail.com:+];
	R_DKIM_ALLOW(0.00)[gmail.com:s=20230601];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	R_SPF_ALLOW(0.00)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.46:from];
	RCPT_COUNT_FIVE(0.00)[6]
Message-ID-Hash: 6GCXN6ZEHWFT4SVED5ZP5ARJ5ZBJ2VRY
X-Message-ID-Hash: 6GCXN6ZEHWFT4SVED5ZP5ARJ5ZBJ2VRY
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: fix timeout handling in dma_resv_wait_timeout
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6GCXN6ZEHWFT4SVED5ZP5ARJ5ZBJ2VRY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RXZlbiB0aGUga2VybmVsZG9jIHNheXMgdGhhdCB3aXRoIGEgemVybyB0aW1lb3V0IHRoZSBmdW5j
dGlvbiBzaG91bGQgbm90DQp3YWl0IGZvciBhbnl0aGluZywgYnV0IHN0aWxsIHJldHVybiAxIHRv
IGluZGljYXRlIHRoYXQgdGhlIGZlbmNlcyBhcmUNCnNpZ25hbGVkIG5vdy4NCg0KVW5mb3J0dW5h
dGVseSB0aGF0IGlzbid0IHdoYXQgd2FzIGltcGxlbWVudGVkLCBpbnN0ZWFkIG9mIG9ubHkgcmV0
dXJuaW5nDQoxIHdlIGFsc28gd2FpdGVkIGZvciBhdCBsZWFzdCBvbmUgamlmZmllcy4NCg0KRml4
IHRoYXQgYnkgYWRqdXN0aW5nIHRoZSBoYW5kbGluZyB0byB3aGF0IHRoZSBmdW5jdGlvbiBpcyBh
Y3R1YWxseQ0KZG9jdW1lbnRlZCB0byBkby4NCg0KUmVwb3J0ZWQtYnk6IE1hcmVrIE9sxaHDoWsg
PG1hcmVrLm9sc2FrQGFtZC5jb20+DQpSZXBvcnRlZC1ieTogTHVjYXMgU3RhY2ggPGwuc3RhY2hA
cGVuZ3V0cm9uaXguZGU+DQpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3Rp
YW4ua29lbmlnQGFtZC5jb20+DQpDYzogPHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmc+DQotLS0NCiBk
cml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYyB8IDExICsrKysrKy0tLS0tDQogMSBmaWxlIGNoYW5n
ZWQsIDYgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtcmVzdi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMNCmluZGV4
IDVmOGQwMTA1MTZmMC4uYWU5MmQ5ZDIzOTRkIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVm
L2RtYS1yZXN2LmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jDQpAQCAtNjg0LDEx
ICs2ODQsMTIgQEAgbG9uZyBkbWFfcmVzdl93YWl0X3RpbWVvdXQoc3RydWN0IGRtYV9yZXN2ICpv
YmosIGVudW0gZG1hX3Jlc3ZfdXNhZ2UgdXNhZ2UsDQogCWRtYV9yZXN2X2l0ZXJfYmVnaW4oJmN1
cnNvciwgb2JqLCB1c2FnZSk7DQogCWRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlX3VubG9ja2VkKCZj
dXJzb3IsIGZlbmNlKSB7DQogDQotCQlyZXQgPSBkbWFfZmVuY2Vfd2FpdF90aW1lb3V0KGZlbmNl
LCBpbnRyLCByZXQpOw0KLQkJaWYgKHJldCA8PSAwKSB7DQotCQkJZG1hX3Jlc3ZfaXRlcl9lbmQo
JmN1cnNvcik7DQotCQkJcmV0dXJuIHJldDsNCi0JCX0NCisJCXJldCA9IGRtYV9mZW5jZV93YWl0
X3RpbWVvdXQoZmVuY2UsIGludHIsIHRpbWVvdXQpOw0KKwkJaWYgKHJldCA8PSAwKQ0KKwkJCWJy
ZWFrOw0KKw0KKwkJLyogRXZlbiBmb3IgemVybyB0aW1lb3V0IHRoZSByZXR1cm4gdmFsdWUgaXMg
MSAqLw0KKwkJdGltZW91dCA9IG1pbih0aW1lb3V0LCByZXQpOw0KIAl9DQogCWRtYV9yZXN2X2l0
ZXJfZW5kKCZjdXJzb3IpOw0KIA0KLS0gDQoyLjM0LjENCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0g
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==

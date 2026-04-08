Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eJFWNgtJ1mkFDQgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 08 Apr 2026 14:24:43 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9023BBF6C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 08 Apr 2026 14:24:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 18A7740492
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Apr 2026 12:24:42 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	by lists.linaro.org (Postfix) with ESMTPS id C08C93F4C6
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2026 12:24:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=pbXrPiaX;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.221.54 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-43b87970468so4768293f8f.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 08 Apr 2026 05:24:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775651079; x=1776255879; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hcT0qoIH7xmelj+rFhrvLZcEz9q7W2TTx0LM03Unuj8=;
        b=pbXrPiaXHTfWq8FZA/F/rD/De6Bo7og1C1RvcOoM+XZ5taNEGPTqIcahZiBa06Hlma
         T0kIqQANLDHeejZwY5VXmWIVSIj8t5V/sICF2SNyQo4D+lv2KpGdbfn12/GR4lQGlTZ4
         UU+f1yXmeiDBt2ZzYjhtTsRctp5rFKpFIibToIuByW9PUHwgkU1JYhobasqvPdJ7wkwz
         lAIKQi3aCwDXAugw4unQazmUCVEGzAus/dE+aEPL5XLWq+A4PzzQeTakPLU+oWkKwikk
         2X+yFc0BjP0E/3XWgiAxqnrkIScGLj70XImaPw5luQV+/pMk84pldnE064064c/ybjDR
         vBCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775651079; x=1776255879;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hcT0qoIH7xmelj+rFhrvLZcEz9q7W2TTx0LM03Unuj8=;
        b=ICtnOxx8GpR7660hmltD/AtV4QmMTvmo35dF0n8vEPisy8RAM92NemNr7g9479Cnql
         Mvw/J36R1dZ9g9SCa2CtDpKcViJ/frtnfDyjSYZ/PlGCNgqmxlGF9hV0UTEHzdPcfiM4
         39ZlttFEAC3Qo3L2sKAX/3zpaaPsYmtxJP10kS+OwPgXDjduoOOcpHUPW9JC4O54IXQa
         82vh0rSM1SwW4Is2zEbM4j/7g0HlLGR9bMrhRd0KrNEWkOjXU+YHim+XRpYZJAEUKcYt
         Dw4oJ8Xae9ahCaqNeebu65wS79DFfUQjvjxGiovyDXIHhvbuj2Dz023/GKriaoPH4GZW
         txcg==
X-Forwarded-Encrypted: i=1; AJvYcCX7s97lcqccTo3zl6qgxRN0a8IwhL4vKiuzIvDkaklXGrngPpZ9iE+dsQi4ctOwITxaDiNMOPzReaY8Th5f@lists.linaro.org
X-Gm-Message-State: AOJu0YwgCzjDqU5LfIFTJhnW5grdN2f27oCwXIkHXkudUd0BAjEMfM/l
	S42F0GAJjbDFWwGmhjPr519hePv8wf/ARORHjpg0+rWf97aHT6A71vhl
X-Gm-Gg: AeBDieu6odIXTw4bqSfbA5WmyfP4LxZtGN94VIfx602dqzp/S1a45TbLllMsdAIrhI8
	ZIUkRxPN5h5wmLUJzxR+gJkCS3NaQFMXYEicnhx+s/xj6rmwR711boePdLeVVMyup4AXrM5t+wo
	HsjTtdTWudYhkjr42ZzMVyZC2AaxU1rCoFFp6OdeuvFC0CX9TOIkrnbf2WmK2MhxJ4toYuox2MI
	m5grwxzHdPmqwcfhy0o7PUVX/hb+SvEss1rUydfXIwzw4qY8pJXjMdbug/L9Dfp3PatuMt6bPZK
	0UhfUBHe4fk24bdaGwjPUJdb8+bYidbE+IrU7QMz/F9Sah8j4jkkHdK3yHsWIP3uza/fYVHrXge
	jUPWG7D5z6vBgKvhs09Dt3kL35Il6YrarHtEWPk2P6IFQteikUzfj/jzh+Puod1Q+xLpvc/Cnl7
	CtRYv9f3qNzgBa5pWmCgumDAU2kheT6cooG5k=
X-Received: by 2002:a05:6000:1446:b0:439:dfae:8083 with SMTP id ffacd0b85a97d-43d292dbc56mr31451445f8f.38.1775651078507;
        Wed, 08 Apr 2026 05:24:38 -0700 (PDT)
Received: from able.fritz.box ([2a00:e180:1423:3300:ad43:2520:7f6:56d3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43d1e4e5890sm57197590f8f.31.2026.04.08.05.24.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Apr 2026 05:24:38 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: janusz.krzysztofik@intel.com,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	linux-media@vger.kernel.org,
	gaoxiang17@xiaomi.com
Date: Wed,  8 Apr 2026 14:24:37 +0200
Message-ID: <20260408122437.1364-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spamd-Bar: ----
Message-ID-Hash: QZ5ZEMHJI5CHZCGETYZRWPWNKI4XB2KP
X-Message-ID-Hash: QZ5ZEMHJI5CHZCGETYZRWPWNKI4XB2KP
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: sumit.semwal@linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: fix order of trace and fput
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QZ5ZEMHJI5CHZCGETYZRWPWNKI4XB2KP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [0.69 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ckoenigleichtzumerken@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-0.773];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,amd.com:mid]
X-Rspamd-Queue-Id: 5D9023BBF6C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

RHJvcHBpbmcgdGhlIGxhc3QgcmVmZXJlbmNlIHRvIHRoZSBETUEtYnVmIGFuZCB0aGVuIGFjY2Vz
c2luZyB0aGUgbmFtZQ0KZm9yIHRyYWNpbmcgY2FuJ3Qgd29yayBjb3JyZWN0bHkuDQoNCk9ubHkg
Y29tcGlsZSB0ZXN0ZWQhDQoNClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlz
dGlhbi5rb2VuaWdAYW1kLmNvbT4NCkZpeGVkOiAyODFhMjI2MzE0MjMgKCJkbWEtYnVmOiBhZGQg
c29tZSB0cmFjZXBvaW50cyB0byBkZWJ1Zy4iKQ0KLS0tDQogZHJpdmVycy9kbWEtYnVmL2RtYS1i
dWYuYyB8IDMgKy0tDQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAyIGRlbGV0aW9u
cygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMv
ZG1hLWJ1Zi9kbWEtYnVmLmMNCmluZGV4IDExNzExODc0YTMyNS4uM2E5ZDUxMTNiOThjIDEwMDY0
NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KKysrIGIvZHJpdmVycy9kbWEtYnVm
L2RtYS1idWYuYw0KQEAgLTg0NSw5ICs4NDUsOCBAQCB2b2lkIGRtYV9idWZfcHV0KHN0cnVjdCBk
bWFfYnVmICpkbWFidWYpDQogCWlmIChXQVJOX09OKCFkbWFidWYgfHwgIWRtYWJ1Zi0+ZmlsZSkp
DQogCQlyZXR1cm47DQogDQotCWZwdXQoZG1hYnVmLT5maWxlKTsNCi0NCiAJRE1BX0JVRl9UUkFD
RSh0cmFjZV9kbWFfYnVmX3B1dCwgZG1hYnVmKTsNCisJZnB1dChkbWFidWYtPmZpbGUpOw0KIH0N
CiBFWFBPUlRfU1lNQk9MX05TX0dQTChkbWFfYnVmX3B1dCwgIkRNQV9CVUYiKTsNCiANCi0tIA0K
Mi40My4wDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVA
bGlzdHMubGluYXJvLm9yZwo=

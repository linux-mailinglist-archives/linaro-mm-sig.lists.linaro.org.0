Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C26B8D31D9
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 May 2024 10:43:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 288C8447D5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 May 2024 08:43:36 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	by lists.linaro.org (Postfix) with ESMTPS id 606003F460
	for <linaro-mm-sig@lists.linaro.org>; Wed, 29 May 2024 08:43:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=kT8BBUqK;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.50 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4210aa012e5so16823645e9.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 29 May 2024 01:43:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716972204; x=1717577004; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lvhs1YIV6pAjRxwybpgLmMel6kLADeGuuGr92YQQdas=;
        b=kT8BBUqKQcIFzHIkMR1cGrbi3LlCQmYRrEMHgAUUwiPHK0hoEUNaNzy29tcSnMHCh7
         IoOl7S7y6XuiVPMQHOdAebrZKnHzt4A6OUCQbicQvMUj10jrDtbTYW2ewrq32TQMYvY3
         nb7P7vlfDIxJDrJH3N0P/Jav9OGM3M+TKD5yDXouF55dCOsGuhVpV86gpOCXzByDzK+6
         +4S8ZXlEPF5j/8Dq82hrg5oUnNtZrR+2JkmKrhWSaVkxUUI4XcVIwjVuW3QNkIEiWHUX
         JUwmQnQI5hqGUkjUWhN/FU4RiKVs1lJkc8ajADyp/kZ3LoF2VGyqEuKws4Sr29edCHf1
         VRjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716972204; x=1717577004;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lvhs1YIV6pAjRxwybpgLmMel6kLADeGuuGr92YQQdas=;
        b=VCSW/2eYXfm6CPmXIwmO7Uo4WLs43wdQ2ifu1cVrznaiXatCMh7YXHzo6NxizzfUF1
         6xMyUQAwTJnd4oB/pU/uAo+F3YYQH/MB1T+pgVHK9duU3tcr+z9qr18Qzz7ox6+fw1f8
         K3v4qd6qmK7z/REaY5T+oLrF8fteDWemoRXJ07HK/KeteLvrmUOJhPhsy5pViqmCcI3C
         bGMDWD8kCMybJQimAKqF/o+3NF+fuCIOXxhmbua7PWX8YlA0gHNfG2aw9L9rWrkVYddk
         OYcTM42/kNkRAWzfL8G1tIRWuiwHXy1gqV0xO3AH1wQl8cYuWjauB/afQmbJNDcyts6b
         tjmQ==
X-Forwarded-Encrypted: i=1; AJvYcCWsCnMfloOnvMV+M7iIHNv0GbqvDL0xEw8YpA5xMr7Finbc15O0enH9HSDjgn4o8g3+tp0TMYJ+rKET2di8+u4aeXXe343ZzxXEhURcw1c=
X-Gm-Message-State: AOJu0YyKdq62BBEtLHldWhD1VKHeao0fa3cm6CewypFsTD8RhJk1s74M
	Fho6GXTSAywzZT7xbmMYN93VJXlx1H7EDSFk34ZmaHKuQzzaaPMG
X-Google-Smtp-Source: AGHT+IHKTLDXQAqpReBZKZ8jDWLCepRMhyiee8/k86QBffcnCdZq0RvxicFRDsDKZ2JIjkbbv4RAGQ==
X-Received: by 2002:a05:600c:314d:b0:421:7ad:daab with SMTP id 5b1f17b1804b1-42108a4f606mr106018725e9.7.1716972204003;
        Wed, 29 May 2024 01:43:24 -0700 (PDT)
Received: from able.fritz.box ([2a00:e180:150d:a900:2eeb:e69b:7ecb:9c4f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3577505a218sm10975107f8f.31.2024.05.29.01.43.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 May 2024 01:43:23 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Wed, 29 May 2024 10:43:22 +0200
Message-Id: <20240529084322.2284-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 606003F460
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.50:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DNSWL_BLOCKED(0.00)[2a00:e180:150d:a900:2eeb:e69b:7ecb:9c4f:received,209.85.128.50:from];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
Message-ID-Hash: E5GKMYDE7RNNSVR6RG3NHHI7SEEO2WTR
X-Message-ID-Hash: E5GKMYDE7RNNSVR6RG3NHHI7SEEO2WTR
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: sumit.semwal@linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: add a warning when drv try to reserve 0 fence slots
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/E5GKMYDE7RNNSVR6RG3NHHI7SEEO2WTR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2hlbiBkbWFfcmVzdl9yZXNlcnZlX2ZlbmNlcygpIGlzIGNhbGxlZCB3aXRoIG51bV9mZW5jZXM9
MCBpdCB1c3VhbGx5DQptZWFucyB0aGF0IGEgZHJpdmVyIG9yIG90aGVyIGNvbXBvbmVudCBtZXNz
ZWQgdXAgaXRzIGNhbGN1bGF0aW9uIGhvdw0KbWFueSBmZW5jZXMgYXJlIG5lZWRlZC4gV2FybiBp
biB0aGF0IHNpdHVhdGlvbi4NCg0KV2hlbiBubyBmZW5jZSBhcmUgbmVlZGVkIHRoZSBmdW5jdGlv
biBzaG91bGRuJ3QgYmUgY2FsbGVkIGluIHRoZSBmaXJzdA0KcGxhY2UuDQoNClNpZ25lZC1vZmYt
Ynk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCi0tLQ0KIGRy
aXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jIHwgNyArKysrKysrDQogMSBmaWxlIGNoYW5nZWQsIDcg
aW5zZXJ0aW9ucygrKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMg
Yi9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYw0KaW5kZXggZTI4NjlmYjMxMTQwLi41ZjhkMDEw
NTE2ZjAgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYw0KKysrIGIvZHJp
dmVycy9kbWEtYnVmL2RtYS1yZXN2LmMNCkBAIC0xODYsNiArMTg2LDEzIEBAIGludCBkbWFfcmVz
dl9yZXNlcnZlX2ZlbmNlcyhzdHJ1Y3QgZG1hX3Jlc3YgKm9iaiwgdW5zaWduZWQgaW50IG51bV9m
ZW5jZXMpDQogDQogCWRtYV9yZXN2X2Fzc2VydF9oZWxkKG9iaik7DQogDQorCS8qIERyaXZlciBh
bmQgY29tcG9uZW50IGNvZGUgc2hvdWxkIG5ldmVyIGNhbGwgdGhpcyBmdW5jdGlvbiB3aXRoDQor
CSAqIG51bV9mZW5jZXM9MC4gSWYgdGhleSBkbyBpdCB1c3VhbGx5IHBvaW50cyB0byBidWdzIHdo
ZW4gY2FsY3VsYXRpbmcNCisJICogdGhlIG51bWJlciBvZiBuZWVkZWQgZmVuY2VzIGR5bmFtaWNh
bGx5Lg0KKwkgKi8NCisJaWYgKFdBUk5fT04oIW51bV9mZW5jZXMpKQ0KKwkJcmV0dXJuIC1FSU5W
QUw7DQorDQogCW9sZCA9IGRtYV9yZXN2X2ZlbmNlc19saXN0KG9iaik7DQogCWlmIChvbGQgJiYg
b2xkLT5tYXhfZmVuY2VzKSB7DQogCQlpZiAoKG9sZC0+bnVtX2ZlbmNlcyArIG51bV9mZW5jZXMp
IDw9IG9sZC0+bWF4X2ZlbmNlcykNCi0tIA0KMi4zNC4xDQoNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=

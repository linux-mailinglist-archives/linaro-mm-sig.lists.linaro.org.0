Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CZpJBdjNO2qZdQgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Jun 2026 14:30:16 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5696BE1D3
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Jun 2026 14:30:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=Zr2nKF4W;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B209140A6B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Jun 2026 12:30:14 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	by lists.linaro.org (Postfix) with ESMTPS id BA8B840A76
	for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Jun 2026 12:29:25 +0000 (UTC)
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4923fb1f095so9957095e9.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Jun 2026 05:29:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782304165; x=1782908965; darn=lists.linaro.org;
        h=content-transfer-encoding:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=gDF3E/f0HpcAxk6Syf/Djo3DsKUW9SV64tqXNSKhSz8=;
        b=Zr2nKF4WeLliMR37HCrYtDnYaKuVi/HJj8tOw3MA3OaHUnw4Faj/MJzxz5k8v2GTX2
         jsiTElAi8tFR0XMmTfftd0GcCF6ECc+CIDkA48IoMiIUUneNVSi3V+K1YKciVj7rtzuA
         hNFbY5SW7XUeEwbKQuw+vTs5EEnHTrXkMz0KxY6/zNJPvzIbuZl7Nh5lV11kLWB05sJF
         DxeLDwjRnSy+SmUvIIbN/0c3FF3+5UIXQOujc/4vajGipodAwXsfNaGfhGr7k7Vp6Azf
         Gi1tqoCY2VdP4psbN8Pyr/N2X2auTLCkM8QMi6T4zDsOUAS8fRmnxiLIbDLMHhKffCVi
         0tYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782304165; x=1782908965;
        h=content-transfer-encoding:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gDF3E/f0HpcAxk6Syf/Djo3DsKUW9SV64tqXNSKhSz8=;
        b=dCkDollwXpBXY9qUMHAaq5QFI6WmJD72+FZ6NmEHOB1HZesVP3y7Ax8D50muLkc90F
         SOxX9equ0eSHqd6QC4nnF/JVgTC5dYgD5qwcbhjsB2FTC2gGJm67LalwSuw3v8+21Oys
         4bdWYl3DJ7fu/vkfX03B0lwoc2WkFaljBac5P2LKvVQhZKrTWEg+wVS+4okJVmmAGXIx
         KXKs7opl25ikySsHd7aGXqvUO+wC+j33ROi3BjvmglVMPqU4MuibYABHAg+IXawYtDlX
         bbEzsKly8By3d9+d2imvhCr63NHQUOj0GRoxhxSM0hZOVSCIr1bJlqj3dx357I4Dp2qd
         Ol8A==
X-Forwarded-Encrypted: i=1; AFNElJ+BfRM5WOT04W6zL1zSrWu+n7rpH7FckVPMNnOEL4I4UkVvOcOOXNliUBFghOaXANP0RqB0Do/oIVKo7RdP@lists.linaro.org
X-Gm-Message-State: AOJu0YyHaTe2gI+ccKh1JVrarMBZRKmm2DJrbqmZKxOvYWtbfAaVrDUd
	nR7Nm5cZOjZMy29VEh0bkBhOE3sGk/gCByK5KB5bAuPsCTZamOYGTYm3
X-Gm-Gg: AfdE7cmY4gOytto3AfPx+LvQHFbYaS9QuhR9cVyjwmoIYWOFg0O/QxPsUKeYXsV85fK
	96zb2gKqCUNbYR+FhVSQkACpICu8yWUyntbS8vAtyrhl+YXU3TFeqrubAZMMnQEgz8GUZvD3oSj
	rv2Tuv0SGM38JSKfmdSg5k0yq9FWEkPbpttSoJrjoWgMhXvxFJF6NlMPVK7VdfKcQCn62vYn3SP
	QLmrMYgk1WZDdtbaWTfoZTQRU4e3nWSjcwj6QL01C5e2WpStxeZTArff6BAY1anqa+1EjxHXECT
	fnB+W4H92tU+YcBmcIqnP0UZJtamkd+Z8JXR6run0I21bpPadbQTcZJjyuSOHrvLjowYplRyg15
	1HH/K0uoAno7hr9JR6Wz8HvIY8B/McspYHXImwPjumVAcwR6LYU+f5r2ojyLC6zzMdiIXAH5cD4
	Ln3q/O/fFF4yJ1vT8fHtHbdiJ4cQ==
X-Received: by 2002:a05:600c:5252:b0:492:4a50:8445 with SMTP id 5b1f17b1804b1-4925b387f72mr116817505e9.31.1782304164616;
        Wed, 24 Jun 2026 05:29:24 -0700 (PDT)
Received: from able.fritz.box ([2a00:e180:157e:3500:2be7:1a89:41c5:9239])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-46c9787dddbsm3896530f8f.3.2026.06.24.05.29.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2026 05:29:24 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@kernel.org,
	simona@ffwll.ch,
	sumit.semwal@linaro.org,
	tvrtko.ursulin@igalia.com,
	dakr@kernel.org
Date: Wed, 24 Jun 2026 13:13:29 +0200
Message-ID: <20260624122917.2483-6-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260624122917.2483-1-christian.koenig@amd.com>
References: <20260624122917.2483-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Spamd-Bar: ----
Message-ID-Hash: MXG2HXIDCEF3DDIUL3I4SCDIR4RU2Q4T
X-Message-ID-Hash: MXG2HXIDCEF3DDIUL3I4SCDIR4RU2Q4T
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: christian.koenig@amd.com
Subject: [Linaro-mm-sig] [PATCH 05/10] drm/sched: use dma_fence_test_signaled_flag()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MXG2HXIDCEF3DDIUL3I4SCDIR4RU2Q4T/>
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
X-Rspamd-Queue-Id: 9A5696BE1D3

SW5zdGVhZCBvZiBkbWFfZmVuY2VfaXNfc2lnbmFsZWRfbG9ja2VkKCkgdXNlDQpkbWFfZmVuY2Vf
dGVzdF9zaWduYWxlZF9mbGFnKCkuDQoNCk5vIGZ1bmN0aW9uYWwgZGlmZmVyZW5jZSB0aGUgbW9j
ayBIVyBmZW5jZSBoYXMgbm8gc2lnbmFsZWQgY2FsbGJhY2sNCmFueXdheS4NCg0KU2lnbmVkLW9m
Zi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KLS0tDQog
ZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci90ZXN0cy9tb2NrX3NjaGVkdWxlci5jIHwgNCArKy0t
DQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCg0KZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvdGVzdHMvbW9ja19zY2hlZHVsZXIu
YyBiL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvdGVzdHMvbW9ja19zY2hlZHVsZXIuYw0KaW5k
ZXggMTQ0MDNhNzYyMzM1Li44MmRjZTM0NGJmYTEgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vc2NoZWR1bGVyL3Rlc3RzL21vY2tfc2NoZWR1bGVyLmMNCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9zY2hlZHVsZXIvdGVzdHMvbW9ja19zY2hlZHVsZXIuYw0KQEAgLTIyNCw3ICsyMjQsNyBAQCBt
b2NrX3NjaGVkX3RpbWVkb3V0X2pvYihzdHJ1Y3QgZHJtX3NjaGVkX2pvYiAqc2NoZWRfam9iKQ0K
IAl9DQogDQogCXNwaW5fbG9ja19pcnFzYXZlKCZzY2hlZC0+bG9jaywgZmxhZ3MpOw0KLQlpZiAo
IWRtYV9mZW5jZV9pc19zaWduYWxlZF9sb2NrZWQoJmpvYi0+aHdfZmVuY2UpKSB7DQorCWlmICgh
ZG1hX2ZlbmNlX3Rlc3Rfc2lnbmFsZWRfZmxhZygmam9iLT5od19mZW5jZSkpIHsNCiAJCWxpc3Rf
ZGVsKCZqb2ItPmxpbmspOw0KIAkJam9iLT5mbGFncyB8PSBEUk1fTU9DS19TQ0hFRF9KT0JfVElN
RURPVVQ7DQogCQlkbWFfZmVuY2Vfc2V0X2Vycm9yKCZqb2ItPmh3X2ZlbmNlLCAtRVRJTUVET1VU
KTsNCkBAIC0yNTgsNyArMjU4LDcgQEAgc3RhdGljIHZvaWQgbW9ja19zY2hlZF9jYW5jZWxfam9i
KHN0cnVjdCBkcm1fc2NoZWRfam9iICpzY2hlZF9qb2IpDQogCWhydGltZXJfY2FuY2VsKCZqb2It
PnRpbWVyKTsNCiANCiAJc3Bpbl9sb2NrX2lycXNhdmUoJnNjaGVkLT5sb2NrLCBmbGFncyk7DQot
CWlmICghZG1hX2ZlbmNlX2lzX3NpZ25hbGVkX2xvY2tlZCgmam9iLT5od19mZW5jZSkpIHsNCisJ
aWYgKCFkbWFfZmVuY2VfdGVzdF9zaWduYWxlZF9mbGFnKCZqb2ItPmh3X2ZlbmNlKSkgew0KIAkJ
bGlzdF9kZWwoJmpvYi0+bGluayk7DQogCQlkbWFfZmVuY2Vfc2V0X2Vycm9yKCZqb2ItPmh3X2Zl
bmNlLCAtRUNBTkNFTEVEKTsNCiAJCWRtYV9mZW5jZV9zaWduYWxfbG9ja2VkKCZqb2ItPmh3X2Zl
bmNlKTsNCi0tIA0KMi40My4wDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=

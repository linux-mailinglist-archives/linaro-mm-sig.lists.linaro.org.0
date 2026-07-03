Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3OUOBAJwVmo75gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:21:06 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 81375757583
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:21:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=pass (policy=none) header.from=linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9975440A78
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:21:04 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	by lists.linaro.org (Postfix) with ESMTPS id 49FA4400F5
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Jul 2026 14:28:04 +0000 (UTC)
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4938d5f86f3so4450445e9.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 03 Jul 2026 07:28:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1783088883; x=1783693683; darn=lists.linaro.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vfzjlva7uTRp2nrRC1IpEggKvDc4norG+B7c1mS+L3Q=;
        b=bmkjZvRjtAnkM75G9qxUnsz9AKl1+xO7KO9szJ9D2u9lvqbZKb5tXBqOxz2ZUiZRG3
         6HRhL4gAbr9l5yXX2E07tkm+hZFysg//tjfaw0OxAE5XMTmOz4QKJ58H4Up0GeqesHQz
         Q0I983vKwuMv90V/0IkHMGAVsYeD0hhs93kXNuRa3voUcGPVEkzKNuZ5uWzKIG60gzqS
         YQai5Rnhcjaic6Kh4pj6eswIbIBnaHrFBTCcG8hiayPYPNI6D2kyRXWoKBN/65yI8NnK
         HMHDsguMfMz6qTAPDQJOcy6oFHgrPle3/XQ/gARZ600bvNtiiJc65i6yLNpHrvUGmP+Q
         I5Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783088883; x=1783693683;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vfzjlva7uTRp2nrRC1IpEggKvDc4norG+B7c1mS+L3Q=;
        b=oyGlhi6EgbrqB9Y2Mi7SQT6AEA5B9jDC+BHPsJbbdq5hoj8FpilE1DkvaOoPYZpjRi
         FXbZ/mNwdINJqP7ipwDVGq/etulnw21aRQ3OnujICak7Ld0FqYtRAgqNWxiUkt9cPQ/5
         ywKEgi85Mlv/4yQQk410GucE+5YDbsD4rJ7ukau98sKMpVyJuFkW8CArRpsR0/YyP8to
         EHb0xb4Gvrk+zLUDgejTDe22iXze/Z2lrNIb2MdECcQGvPHwwntYT4q+CEoWpJzDSNAj
         BGczaIwCfHME0RnxB2T3nBvtdhWDlYybYHBE0xlXkFk/xpp59gQxjmCkzE6zXcCtge6u
         0Bng==
X-Forwarded-Encrypted: i=1; AFNElJ8sZV4qmKcJ/yPnsh5UjE5qfDVhp9ODYljU5kGv4Lk3ZjcGXAyZx8rtHOSzxuGtpoZY1wYBFkZqsQiWD8HD@lists.linaro.org
X-Gm-Message-State: AOJu0YxOY47kKpIMmucwqVJ7GpvN3jyaOnUqQzRukAj3nRjQR+232MzN
	HjFyPWrb0QT4bhGycG3B8nClU68QMOgN9lD1mraCp3zqM713pybNBMGA/vsLNYBqx9t2v9DtfsZ
	6gED84fSDeRUe
X-Gm-Gg: AfdE7cmZ9DFK0xdLzmt93JP71He8IApn4cIKPj2KWXS9t8vatDx9YW0uGxGl3OojRux
	3Kq083FZQQUZxQBYHo3K6Bclp5o9paiTl5xc9zgbrAX5AQWPUgqT+8nyJ+ShWcDSQ4iEZ1c2xbB
	QFFpmVOljw6OTpIj1jh8WemQWmjCwPD3D0gFkZO+VBAyhtgi2pW42LVTSKPPp4P6i7chelOKz83
	EuCsw3bzYxuxdrdDVfYjBRliJrpjoLdiBLfvs9ylRv+bhM26TrwVs3lY7ce6McjY4EKldEz0TsM
	F05C0qY941GMuiZpSKSIyQ1D5fp12NsOdmrF1SfQnjEFYGVo/gGJ4ujq0egDT2P+6mQ/+90inIb
	gvgquUs9/dJcK4Bcse2jm7wZx4U62C+rQOZyFRGt0SpLqj1TVcj5M/TkykAPjq1sXd93BDYi4AL
	EWFEBq/YC1cwgWjhu0wOM6ax1VKY2NSZOv5Bn3o0ja5JkO8LGxxN7GxDaehpjJxTk=
X-Received: by 2002:a05:600c:8718:b0:492:7025:13fd with SMTP id 5b1f17b1804b1-493d0b2fe36mr4072985e9.0.1783088883062;
        Fri, 03 Jul 2026 07:28:03 -0700 (PDT)
Received: from ta2.c.googlers.com (214.8.78.34.bc.googleusercontent.com. [34.78.8.214])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493ccd9d607sm73048945e9.2.2026.07.03.07.28.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2026 07:28:02 -0700 (PDT)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Fri, 03 Jul 2026 14:28:01 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Message-Id: <20260703-5-15-dma-fence-unwrap-v2-1-43d58ee68c6b@linaro.org>
X-B4-Tracking: v=1; b=H4sIAPDGR2oC/4WNSw7CMAwFr1J5jZGTfpBYcQ/URUid1hIkyIECq
 np3Qi/AckZ68xbIrMIZjtUCyrNkSbGA3VXgJxdHRhkKgyXb0YFqbNG0ONwcBo6e8Rlf6u5IoXG
 dp3pwwULZ3pWDvLfuuS88SX4k/Ww3s/nZf8XZoEHyoWuai2/JhNNVotO0TzpCv67rFyJEdd27A
 AAA
X-Change-ID: 20260703-5-15-dma-fence-unwrap-0f4a6c03daf2
To: stable@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>,
 Gustavo Padovan <gustavo@padovan.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Sasha Levin <sashal@kernel.org>, Alex Deucher <alexander.deucher@amd.com>,
 Yunxiang Li <Yunxiang.Li@amd.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783088882; l=6389;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=0I76ZwMoPjiSrdzlVPbCXsgffgqRX/g8PDFQj/MqraI=;
 b=MUC/mZrIiaFHeZ3I4K94wWDobfdb8G1nLQh5/QGPiyaNX/jdcVM7J7Id9ZpF/FWyi0B5qXo/3
 6/uHcV8aGcQC06CtW95kCzjuXQTe1hwcRsJQAUBgmsuaYfkYWLuKFE3
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=
X-Spamd-Bar: ----
X-MailFrom: tudor.ambarus@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZGW274NO7ZWTO3JVAGHSTWWCZKUFEHTY
X-Message-ID-Hash: ZGW274NO7ZWTO3JVAGHSTWWCZKUFEHTY
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:17:03 +0000
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, peter.griffin@linaro.org, andre.draszik@linaro.org, jyescas@google.com, kernel-team@android.com, Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2] dma-buf: remove unused dma-fence-unwrap.c (stable/linux-5.15.y only)
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZGW274NO7ZWTO3JVAGHSTWWCZKUFEHTY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.09 / 15.00];
	DATE_IN_PAST(1.00)[266];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[tudor.ambarus@linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_RECIPIENTS(0.00)[m:stable@vger.kernel.org,m:sumit.semwal@linaro.org,m:gustavo@padovan.org,m:christian.koenig@amd.com,m:sashal@kernel.org,m:alexander.deucher@amd.com,m:Yunxiang.Li@amd.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:peter.griffin@linaro.org,m:andre.draszik@linaro.org,m:jyescas@google.com,m:kernel-team@android.com,m:tudor.ambarus@linaro.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tudor.ambarus@linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:from_mime,linaro.org:email,linaro.org:mid,amd.com:email,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 81375757583

VGhlIGZpbGUgZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS11bndyYXAuYyB3YXMgaW5jb3JyZWN0
bHkgYWRkZWQgdG8NCnRoZSA1LjE1Lnkgc3RhYmxlIGJyYW5jaCBpbiBjb21taXQgNGU4MmI5YzEx
ZDNjICgiZG1hLWJ1ZjogYWRkDQpkbWFfZmVuY2VfdGltZXN0YW1wIGhlbHBlciIpIGFzIGEgbmV3
IGZpbGUsIGJ1dCBpdCB3YXMgbmV2ZXIgZW5hYmxlZCBpbg0KdGhlIE1ha2VmaWxlLCBhbmQgaXRz
IGhlYWRlciBpbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS11bndyYXAuaCB3YXMgbm90DQpwcmVzZW50
LCBtYWtpbmcgaXQgdW5jb21waWxhYmxlLg0KDQpBIGZ1bGwgcmV2ZXJ0IG9mIGNvbW1pdCA0ZTgy
YjljMTFkM2MgKCJkbWEtYnVmOiBhZGQgZG1hX2ZlbmNlX3RpbWVzdGFtcA0KaGVscGVyIikgaXMg
bm90IGRlc2lyYWJsZSBiZWNhdXNlIHRoYXQgY29tbWl0IGFsc28gaW50cm9kdWNlZCB0aGUgdmFs
aWQNCmRtYV9mZW5jZV90aW1lc3RhbXAoKSBoZWxwZXIgYW5kIGZpeGVkIGxlZ2l0aW1hdGUgdGlt
ZXN0YW1wIHJhY2UNCndpbmRvd3MgaW4gZHJpdmVycy9kbWEtYnVmL3N5bmNfZmlsZS5jIGFuZA0K
ZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMuDQoNClNpbmNlIHRoZXJlIGFy
ZSBubyB1c2VycyBvZiBkbWEtZmVuY2UtdW53cmFwIGluIHRoZSA1LjE1LnkgYnJhbmNoLA0KcmVt
b3ZlIHRoZSB1bnVzZWQgZmlsZSB0byBjbGVhbiB1cCB0aGUgdHJlZSBhbmQgYXZvaWQgY29uZnVz
aW9uLg0KDQpGaXhlczogNGU4MmI5YzExZDNjICgiZG1hLWJ1ZjogYWRkIGRtYV9mZW5jZV90aW1l
c3RhbXAgaGVscGVyIikNClNpZ25lZC1vZmYtYnk6IFR1ZG9yIEFtYmFydXMgPHR1ZG9yLmFtYmFy
dXNAbGluYXJvLm9yZz4NCi0tLQ0KQ2hhbmdlcyBpbiB2MjoNCi0gYWRkIFRvOiBzdGFibGVAdmdl
ci5rZXJuZWwub3JnDQotIExpbmsgdG8gdjE6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAy
NjA3MDMtNS0xNS1kbWEtZmVuY2UtdW53cmFwLXYxLTEtMGNmNjQ0YmM1MDFmQGxpbmFyby5vcmcN
Ci0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtdW53cmFwLmMgfCAxNzYgLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KIDEgZmlsZSBjaGFuZ2VkLCAxNzYgZGVsZXRp
b25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLXVud3JhcC5j
IGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS11bndyYXAuYw0KZGVsZXRlZCBmaWxlIG1vZGUg
MTAwNjQ0DQppbmRleCA2MjhhZjUxYzgxYWYuLjAwMDAwMDAwMDAwMA0KLS0tIGEvZHJpdmVycy9k
bWEtYnVmL2RtYS1mZW5jZS11bndyYXAuYw0KKysrIC9kZXYvbnVsbA0KQEAgLTEsMTc2ICswLDAg
QEANCi0vLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5DQotLyoNCi0gKiBk
bWEtZmVuY2UtdXRpbDogbWlzYyBmdW5jdGlvbnMgZm9yIGRtYV9mZW5jZSBvYmplY3RzDQotICoN
Ci0gKiBDb3B5cmlnaHQgKEMpIDIwMjIgQWR2YW5jZWQgTWljcm8gRGV2aWNlcywgSW5jLg0KLSAq
IEF1dGhvcnM6DQotICoJQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29t
Pg0KLSAqLw0KLQ0KLSNpbmNsdWRlIDxsaW51eC9kbWEtZmVuY2UuaD4NCi0jaW5jbHVkZSA8bGlu
dXgvZG1hLWZlbmNlLWFycmF5Lmg+DQotI2luY2x1ZGUgPGxpbnV4L2RtYS1mZW5jZS1jaGFpbi5o
Pg0KLSNpbmNsdWRlIDxsaW51eC9kbWEtZmVuY2UtdW53cmFwLmg+DQotI2luY2x1ZGUgPGxpbnV4
L3NsYWIuaD4NCi0NCi0vKiBJbnRlcm5hbCBoZWxwZXIgdG8gc3RhcnQgbmV3IGFycmF5IGl0ZXJh
dGlvbiwgZG9uJ3QgdXNlIGRpcmVjdGx5ICovDQotc3RhdGljIHN0cnVjdCBkbWFfZmVuY2UgKg0K
LV9fZG1hX2ZlbmNlX3Vud3JhcF9hcnJheShzdHJ1Y3QgZG1hX2ZlbmNlX3Vud3JhcCAqY3Vyc29y
KQ0KLXsNCi0JY3Vyc29yLT5hcnJheSA9IGRtYV9mZW5jZV9jaGFpbl9jb250YWluZWQoY3Vyc29y
LT5jaGFpbik7DQotCWN1cnNvci0+aW5kZXggPSAwOw0KLQlyZXR1cm4gZG1hX2ZlbmNlX2FycmF5
X2ZpcnN0KGN1cnNvci0+YXJyYXkpOw0KLX0NCi0NCi0vKioNCi0gKiBkbWFfZmVuY2VfdW53cmFw
X2ZpcnN0IC0gcmV0dXJuIHRoZSBmaXJzdCBmZW5jZSBmcm9tIGZlbmNlIGNvbnRhaW5lcnMNCi0g
KiBAaGVhZDogdGhlIGVudHJ5cG9pbnQgaW50byB0aGUgY29udGFpbmVycw0KLSAqIEBjdXJzb3I6
IGN1cnJlbnQgcG9zaXRpb24gaW5zaWRlIHRoZSBjb250YWluZXJzDQotICoNCi0gKiBVbndyYXBz
IHBvdGVudGlhbCBkbWFfZmVuY2VfY2hhaW4vZG1hX2ZlbmNlX2FycmF5IGNvbnRhaW5lcnMgYW5k
IHJldHVybiB0aGUNCi0gKiBmaXJzdCBmZW5jZS4NCi0gKi8NCi1zdHJ1Y3QgZG1hX2ZlbmNlICpk
bWFfZmVuY2VfdW53cmFwX2ZpcnN0KHN0cnVjdCBkbWFfZmVuY2UgKmhlYWQsDQotCQkJCQkgc3Ry
dWN0IGRtYV9mZW5jZV91bndyYXAgKmN1cnNvcikNCi17DQotCWN1cnNvci0+Y2hhaW4gPSBkbWFf
ZmVuY2VfZ2V0KGhlYWQpOw0KLQlyZXR1cm4gX19kbWFfZmVuY2VfdW53cmFwX2FycmF5KGN1cnNv
cik7DQotfQ0KLUVYUE9SVF9TWU1CT0xfR1BMKGRtYV9mZW5jZV91bndyYXBfZmlyc3QpOw0KLQ0K
LS8qKg0KLSAqIGRtYV9mZW5jZV91bndyYXBfbmV4dCAtIHJldHVybiB0aGUgbmV4dCBmZW5jZSBm
cm9tIGEgZmVuY2UgY29udGFpbmVycw0KLSAqIEBjdXJzb3I6IGN1cnJlbnQgcG9zaXRpb24gaW5z
aWRlIHRoZSBjb250YWluZXJzDQotICoNCi0gKiBDb250aW51ZSB1bndyYXBwaW5nIHRoZSBkbWFf
ZmVuY2VfY2hhaW4vZG1hX2ZlbmNlX2FycmF5IGNvbnRhaW5lcnMgYW5kIHJldHVybg0KLSAqIHRo
ZSBuZXh0IGZlbmNlIGZyb20gdGhlbS4NCi0gKi8NCi1zdHJ1Y3QgZG1hX2ZlbmNlICpkbWFfZmVu
Y2VfdW53cmFwX25leHQoc3RydWN0IGRtYV9mZW5jZV91bndyYXAgKmN1cnNvcikNCi17DQotCXN0
cnVjdCBkbWFfZmVuY2UgKnRtcDsNCi0NCi0JKytjdXJzb3ItPmluZGV4Ow0KLQl0bXAgPSBkbWFf
ZmVuY2VfYXJyYXlfbmV4dChjdXJzb3ItPmFycmF5LCBjdXJzb3ItPmluZGV4KTsNCi0JaWYgKHRt
cCkNCi0JCXJldHVybiB0bXA7DQotDQotCWN1cnNvci0+Y2hhaW4gPSBkbWFfZmVuY2VfY2hhaW5f
d2FsayhjdXJzb3ItPmNoYWluKTsNCi0JcmV0dXJuIF9fZG1hX2ZlbmNlX3Vud3JhcF9hcnJheShj
dXJzb3IpOw0KLX0NCi1FWFBPUlRfU1lNQk9MX0dQTChkbWFfZmVuY2VfdW53cmFwX25leHQpOw0K
LQ0KLS8qIEltcGxlbWVudGF0aW9uIGZvciB0aGUgZG1hX2ZlbmNlX21lcmdlKCkgbWFyY28sIGRv
bid0IHVzZSBkaXJlY3RseSAqLw0KLXN0cnVjdCBkbWFfZmVuY2UgKl9fZG1hX2ZlbmNlX3Vud3Jh
cF9tZXJnZSh1bnNpZ25lZCBpbnQgbnVtX2ZlbmNlcywNCi0JCQkJCSAgIHN0cnVjdCBkbWFfZmVu
Y2UgKipmZW5jZXMsDQotCQkJCQkgICBzdHJ1Y3QgZG1hX2ZlbmNlX3Vud3JhcCAqaXRlcikNCi17
DQotCXN0cnVjdCBkbWFfZmVuY2VfYXJyYXkgKnJlc3VsdDsNCi0Jc3RydWN0IGRtYV9mZW5jZSAq
dG1wLCAqKmFycmF5Ow0KLQlrdGltZV90IHRpbWVzdGFtcDsNCi0JdW5zaWduZWQgaW50IGk7DQot
CXNpemVfdCBjb3VudDsNCi0NCi0JY291bnQgPSAwOw0KLQl0aW1lc3RhbXAgPSBuc190b19rdGlt
ZSgwKTsNCi0JZm9yIChpID0gMDsgaSA8IG51bV9mZW5jZXM7ICsraSkgew0KLQkJZG1hX2ZlbmNl
X3Vud3JhcF9mb3JfZWFjaCh0bXAsICZpdGVyW2ldLCBmZW5jZXNbaV0pIHsNCi0JCQlpZiAoIWRt
YV9mZW5jZV9pc19zaWduYWxlZCh0bXApKSB7DQotCQkJCSsrY291bnQ7DQotCQkJfSBlbHNlIHsN
Ci0JCQkJa3RpbWVfdCB0ID0gZG1hX2ZlbmNlX3RpbWVzdGFtcCh0bXApOw0KLQ0KLQkJCQlpZiAo
a3RpbWVfYWZ0ZXIodCwgdGltZXN0YW1wKSkNCi0JCQkJCXRpbWVzdGFtcCA9IHQ7DQotCQkJfQ0K
LQkJfQ0KLQl9DQotDQotCS8qDQotCSAqIElmIHdlIGNvdWxkbid0IGZpbmQgYSBwZW5kaW5nIGZl
bmNlIGp1c3QgcmV0dXJuIGEgcHJpdmF0ZSBzaWduYWxlZA0KLQkgKiBmZW5jZSB3aXRoIHRoZSB0
aW1lc3RhbXAgb2YgdGhlIGxhc3Qgc2lnbmFsZWQgb25lLg0KLQkgKi8NCi0JaWYgKGNvdW50ID09
IDApDQotCQlyZXR1cm4gZG1hX2ZlbmNlX2FsbG9jYXRlX3ByaXZhdGVfc3R1Yih0aW1lc3RhbXAp
Ow0KLQ0KLQlhcnJheSA9IGttYWxsb2NfYXJyYXkoY291bnQsIHNpemVvZigqYXJyYXkpLCBHRlBf
S0VSTkVMKTsNCi0JaWYgKCFhcnJheSkNCi0JCXJldHVybiBOVUxMOw0KLQ0KLQkvKg0KLQkgKiBU
aGlzIHRyYXNoZXMgdGhlIGlucHV0IGZlbmNlIGFycmF5IGFuZCB1c2VzIGl0IGFzIHBvc2l0aW9u
IGZvciB0aGUNCi0JICogZm9sbG93aW5nIG1lcmdlIGxvb3AuIFRoaXMgd29ya3MgYmVjYXVzZSB0
aGUgZG1hX2ZlbmNlX21lcmdlKCkNCi0JICogd3JhcHBlciBtYWNybyBpcyBjcmVhdGluZyB0aGlz
IHRlbXBvcmFyeSBhcnJheSBvbiB0aGUgc3RhY2sgdG9nZXRoZXINCi0JICogd2l0aCB0aGUgaXRl
cmF0b3JzLg0KLQkgKi8NCi0JZm9yIChpID0gMDsgaSA8IG51bV9mZW5jZXM7ICsraSkNCi0JCWZl
bmNlc1tpXSA9IGRtYV9mZW5jZV91bndyYXBfZmlyc3QoZmVuY2VzW2ldLCAmaXRlcltpXSk7DQot
DQotCWNvdW50ID0gMDsNCi0JZG8gew0KLQkJdW5zaWduZWQgaW50IHNlbDsNCi0NCi1yZXN0YXJ0
Og0KLQkJdG1wID0gTlVMTDsNCi0JCWZvciAoaSA9IDA7IGkgPCBudW1fZmVuY2VzOyArK2kpIHsN
Ci0JCQlzdHJ1Y3QgZG1hX2ZlbmNlICpuZXh0Ow0KLQ0KLQkJCXdoaWxlIChmZW5jZXNbaV0gJiYg
ZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKGZlbmNlc1tpXSkpDQotCQkJCWZlbmNlc1tpXSA9IGRtYV9m
ZW5jZV91bndyYXBfbmV4dCgmaXRlcltpXSk7DQotDQotCQkJbmV4dCA9IGZlbmNlc1tpXTsNCi0J
CQlpZiAoIW5leHQpDQotCQkJCWNvbnRpbnVlOw0KLQ0KLQkJCS8qDQotCQkJICogV2UgY2FuJ3Qg
Z3VhcmFudGVlIHRoYXQgaW5wdXRlIGZlbmNlcyBhcmUgb3JkZXJlZCBieQ0KLQkJCSAqIGNvbnRl
eHQsIGJ1dCBpdCBpcyBzdGlsbCBxdWl0ZSBsaWtlbHkgd2hlbiB0aGlzDQotCQkJICogZnVuY3Rp
b24gaXMgdXNlZCBtdWx0aXBsZSB0aW1lcy4gU28gYXR0ZW1wdCB0byBvcmRlcg0KLQkJCSAqIHRo
ZSBmZW5jZXMgYnkgY29udGV4dCBhcyB3ZSBwYXNzIG92ZXIgdGhlbSBhbmQgbWVyZ2UNCi0JCQkg
KiBmZW5jZXMgd2l0aCB0aGUgc2FtZSBjb250ZXh0Lg0KLQkJCSAqLw0KLQkJCWlmICghdG1wIHx8
IHRtcC0+Y29udGV4dCA+IG5leHQtPmNvbnRleHQpIHsNCi0JCQkJdG1wID0gbmV4dDsNCi0JCQkJ
c2VsID0gaTsNCi0NCi0JCQl9IGVsc2UgaWYgKHRtcC0+Y29udGV4dCA8IG5leHQtPmNvbnRleHQp
IHsNCi0JCQkJY29udGludWU7DQotDQotCQkJfSBlbHNlIGlmIChkbWFfZmVuY2VfaXNfbGF0ZXIo
dG1wLCBuZXh0KSkgew0KLQkJCQlmZW5jZXNbaV0gPSBkbWFfZmVuY2VfdW53cmFwX25leHQoJml0
ZXJbaV0pOw0KLQkJCQlnb3RvIHJlc3RhcnQ7DQotCQkJfSBlbHNlIHsNCi0JCQkJZmVuY2VzW3Nl
bF0gPSBkbWFfZmVuY2VfdW53cmFwX25leHQoJml0ZXJbc2VsXSk7DQotCQkJCWdvdG8gcmVzdGFy
dDsNCi0JCQl9DQotCQl9DQotDQotCQlpZiAodG1wKSB7DQotCQkJYXJyYXlbY291bnQrK10gPSBk
bWFfZmVuY2VfZ2V0KHRtcCk7DQotCQkJZmVuY2VzW3NlbF0gPSBkbWFfZmVuY2VfdW53cmFwX25l
eHQoJml0ZXJbc2VsXSk7DQotCQl9DQotCX0gd2hpbGUgKHRtcCk7DQotDQotCWlmIChjb3VudCA9
PSAwKSB7DQotCQl0bXAgPSBkbWFfZmVuY2VfYWxsb2NhdGVfcHJpdmF0ZV9zdHViKGt0aW1lX2dl
dCgpKTsNCi0JCWdvdG8gcmV0dXJuX3RtcDsNCi0JfQ0KLQ0KLQlpZiAoY291bnQgPT0gMSkgew0K
LQkJdG1wID0gYXJyYXlbMF07DQotCQlnb3RvIHJldHVybl90bXA7DQotCX0NCi0NCi0JcmVzdWx0
ID0gZG1hX2ZlbmNlX2FycmF5X2NyZWF0ZShjb3VudCwgYXJyYXksDQotCQkJCQlkbWFfZmVuY2Vf
Y29udGV4dF9hbGxvYygxKSwNCi0JCQkJCTEsIGZhbHNlKTsNCi0JaWYgKCFyZXN1bHQpIHsNCi0J
CXRtcCA9IE5VTEw7DQotCQlnb3RvIHJldHVybl90bXA7DQotCX0NCi0JcmV0dXJuICZyZXN1bHQt
PmJhc2U7DQotDQotcmV0dXJuX3RtcDoNCi0Ja2ZyZWUoYXJyYXkpOw0KLQlyZXR1cm4gdG1wOw0K
LX0NCi1FWFBPUlRfU1lNQk9MX0dQTChfX2RtYV9mZW5jZV91bndyYXBfbWVyZ2UpOw0KDQotLS0N
CmJhc2UtY29tbWl0OiBlY2VlZWM3OWRiYzY0NmQ2ZGFjZTQ5ZWQxYmEyZjY1NjY4M2Q1NTM3DQpj
aGFuZ2UtaWQ6IDIwMjYwNzAzLTUtMTUtZG1hLWZlbmNlLXVud3JhcC0wZjRhNmMwM2RhZjINCg0K
QmVzdCByZWdhcmRzLA0KLS0gDQpUdWRvciBBbWJhcnVzIDx0dWRvci5hbWJhcnVzQGxpbmFyby5v
cmc+DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlz
dHMubGluYXJvLm9yZwo=

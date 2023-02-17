Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D92CF69CB1C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Feb 2023 13:36:15 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8F1593F335
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Feb 2023 12:36:14 +0000 (UTC)
Received: from todd.t-8ch.de (todd.t-8ch.de [159.69.126.157])
	by lists.linaro.org (Postfix) with ESMTPS id 377293E95C
	for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Feb 2023 03:13:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=weissschuh.net header.s=mail header.b=KXponZxz;
	spf=pass (lists.linaro.org: domain of linux@weissschuh.net designates 159.69.126.157 as permitted sender) smtp.mailfrom=linux@weissschuh.net;
	dmarc=none
From: =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <linux@weissschuh.net>
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=weissschuh.net;
	s=mail; t=1676603605;
	bh=LH/xXQeQJ9b7IeJuEOdjjtQYgBVktXb3iGO/ZdlJOBM=;
	h=From:Date:Subject:To:Cc:From;
	b=KXponZxzed7GavKW502p8mcvKO0FOWeQc0gC3KGhtKnTieSpIzxOGx4RcNwtP9q2V
	 Da5TbqsKtmApQqJBCZIBKN4esnXw8ZRd0v6nH3jLrkXTze4QkoBxIvLEzwnSSAgAiO
	 O5RBqn0q9mHHXy8IPdxDXuvwncX+BNeBmifOnfwk=
Date: Fri, 17 Feb 2023 03:13:22 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Message-Id: <20230217-kobj_type-dma-buf-v1-1-b84a3616522c@weissschuh.net>
X-B4-Tracking: v=1; b=H4sIANHw7mMC/x2N4QqCQBAGX0X2dwveCRW9SkTseZ+5ZafcZSjiu
 7f0cwaG2aggKwpdqo0yvlp0TAbuUFHbS3qANRqTr31Te3fi1xie9886geNbOMwdi4cc5SwuoiH
 rghRwyJLa3so0D4PJKaPT5T+63vb9B9H91jl4AAAA
To: Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailer: b4 0.12.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1676603602; l=1123;
 i=linux@weissschuh.net; s=20221212; h=from:subject:message-id;
 bh=LH/xXQeQJ9b7IeJuEOdjjtQYgBVktXb3iGO/ZdlJOBM=;
 b=rrQjbf58nObPJhR+ovNy9W4vuE/7AyhUZbdHvb87cT7IzWpI5BE8fvDeBIg0KoH+pxoX+KbT4
 AUKjKj2iHEEA1TlXGTuWeExpnYQ4BbfzgcccPlk4wjhwdMr80F2E6uM
X-Developer-Key: i=linux@weissschuh.net; a=ed25519;
 pk=KcycQgFPX2wGR5azS7RhpBqedglOZVgRPfdFSPB1LNw=
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 377293E95C
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.94 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	R_MIXED_CHARSET(0.56)[subject];
	R_SPF_ALLOW(-0.20)[+a];
	R_DKIM_ALLOW(-0.20)[weissschuh.net:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_ZERO(0.00)[0];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:24940, ipnet:159.69.0.0/16, country:DE];
	RCPT_COUNT_SEVEN(0.00)[7];
	DKIM_TRACE(0.00)[weissschuh.net:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[weissschuh.net:dkim,weissschuh.net:email,todd.t-8ch.de:helo,todd.t-8ch.de:rdns];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[weissschuh.net];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-MailFrom: linux@weissschuh.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: NOXSA4NFVDWMRFTURSDA6J4YQMMAZQVI
X-Message-ID-Hash: NOXSA4NFVDWMRFTURSDA6J4YQMMAZQVI
X-Mailman-Approved-At: Mon, 20 Feb 2023 12:35:56 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <linux@weissschuh.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: make kobj_type structure constant
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NOXSA4NFVDWMRFTURSDA6J4YQMMAZQVI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64

U2luY2UgY29tbWl0IGVlNmQzZGQ0ZWQ0OCAoImRyaXZlciBjb3JlOiBtYWtlIGtvYmpfdHlwZSBj
b25zdGFudC4iKQ0KdGhlIGRyaXZlciBjb3JlIGFsbG93cyB0aGUgdXNhZ2Ugb2YgY29uc3Qgc3Ry
dWN0IGtvYmpfdHlwZS4NCg0KVGFrZSBhZHZhbnRhZ2Ugb2YgdGhpcyB0byBjb25zdGlmeSB0aGUg
c3RydWN0dXJlIGRlZmluaXRpb24gdG8gcHJldmVudA0KbW9kaWZpY2F0aW9uIGF0IHJ1bnRpbWUu
DQoNClNpZ25lZC1vZmYtYnk6IFRob21hcyBXZWnDn3NjaHVoIDxsaW51eEB3ZWlzc3NjaHVoLm5l
dD4NCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLXN5c2ZzLXN0YXRzLmMgfCAyICstDQog
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQoNCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi1zeXNmcy1zdGF0cy5jIGIvZHJpdmVycy9kbWEt
YnVmL2RtYS1idWYtc3lzZnMtc3RhdHMuYw0KaW5kZXggZmJmNzI1ZmFlN2MxLi42Y2ZiYmYwNzIw
YmQgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi1zeXNmcy1zdGF0cy5jDQor
KysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi1zeXNmcy1zdGF0cy5jDQpAQCAtMTEyLDcgKzEx
Miw3IEBAIHN0YXRpYyB2b2lkIGRtYV9idWZfc3lzZnNfcmVsZWFzZShzdHJ1Y3Qga29iamVjdCAq
a29iaikNCiAJa2ZyZWUoc3lzZnNfZW50cnkpOw0KIH0NCiANCi1zdGF0aWMgc3RydWN0IGtvYmpf
dHlwZSBkbWFfYnVmX2t0eXBlID0gew0KK3N0YXRpYyBjb25zdCBzdHJ1Y3Qga29ial90eXBlIGRt
YV9idWZfa3R5cGUgPSB7DQogCS5zeXNmc19vcHMgPSAmZG1hX2J1Zl9zdGF0c19zeXNmc19vcHMs
DQogCS5yZWxlYXNlID0gZG1hX2J1Zl9zeXNmc19yZWxlYXNlLA0KIAkuZGVmYXVsdF9ncm91cHMg
PSBkbWFfYnVmX3N0YXRzX2RlZmF1bHRfZ3JvdXBzLA0KDQotLS0NCmJhc2UtY29tbWl0OiAzYWM4
OGZhNDYwNWVjOThlNTQ1ZmIzYWQwMTU0ZjU3NWZkYTJkZTVmDQpjaGFuZ2UtaWQ6IDIwMjMwMjE3
LWtvYmpfdHlwZS1kbWEtYnVmLWEyZWE2YThhMWRlMw0KDQpCZXN0IHJlZ2FyZHMsDQotLSANClRo
b21hcyBXZWnDn3NjaHVoIDxsaW51eEB3ZWlzc3NjaHVoLm5ldD4NCg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==

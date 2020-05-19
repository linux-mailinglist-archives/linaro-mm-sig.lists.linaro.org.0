Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C231D97BC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2020 15:29:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3FD6F65F86
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2020 13:29:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2D96565F87; Tue, 19 May 2020 13:29:00 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ADEA965F7E;
	Tue, 19 May 2020 13:28:11 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 00337619EA
 for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2020 13:28:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D735165F7E; Tue, 19 May 2020 13:28:05 +0000 (UTC)
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by lists.linaro.org (Postfix) with ESMTPS id 5B434619EA
 for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2020 13:28:04 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id 50so15868483wrc.11
 for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2020 06:28:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hM5OXAptbKPP/8+yKuT4RVgcPXCSJuvxjvItOcy5Ch4=;
 b=uIgWNO34JwQUkKv99npY8UgwtOeTZoyOBgInhWoSOt3q+lng7Lji07k8SXSz9tSDsD
 iqIf6SPbZ9LBGlvV4RzDx6tPkRwiDr0mMR3c30niwvMFa8mdISwFZPOqmQlsIj7AXj1/
 S2/l40Uj6GcUFuGHT7n9syVZBH3Zu402uEHrkVUlng4Y5GLgvg93JnaHKEZk9/k2g/hX
 r38W1dBRxYwa9LwVap/P9QRW2JLyX0zrOjtGNOKs5atCKAIqPIUTEbpYaOH35Zm/NxXj
 s8GxJelxCuQpS4dluGPJ6kPhMpFwWEO4zLQ7RCjiujCVIV0vk8JiXI/QRIaQus/7f5Vh
 n/5Q==
X-Gm-Message-State: AOAM531hAqD15mRZlc76PpQlN73ECjefuUcTJQl15tFus7RrZtii9jFw
 uUAHGmTOqv4xXj3HdnSDyTI9VA==
X-Google-Smtp-Source: ABdhPJzSWGtPCk2INREnYHV0P2JSQYvdRopa+WJ/sS5YMlaRPcHSE74y7pbs0cpiCamKX4cFMl9Z/Q==
X-Received: by 2002:adf:8b98:: with SMTP id o24mr26575236wra.156.1589894883485; 
 Tue, 19 May 2020 06:28:03 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id n9sm4092620wmj.5.2020.05.19.06.28.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2020 06:28:02 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 19 May 2020 15:27:56 +0200
Message-Id: <20200519132756.682888-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Oded Gabbay <oded.gabbay@gmail.com>, amd-gfx@lists.freedesktop.org,
 linux-rdma@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>, Jani Nikula <jani.nikula@linux.intel.com>,
 linaro-mm-sig@lists.linaro.org,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 Ben Skeggs <bskeggs@redhat.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-media@vger.kernel.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Subject: [Linaro-mm-sig] [PATCH] dma-fence: add might_sleep annotation to
	_wait()
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

RG8gaXQgdW5jb250aW9uYWxseSwgdGhlcmUncyBhIHNlcGFyYXRlIHBlZWsgZnVuY3Rpb24gd2l0
aApkbWFfZmVuY2VfaXNfc2lnbmFsbGVkKCkgd2hpY2ggY2FuIGJlIGNhbGxlZCBmcm9tIGF0b21p
YyBjb250ZXh0LgoKdjI6IENvbnNlbnN1cyBjYWxscyBmb3IgYW4gdW5jb25kaXRpb25hbCBtaWdo
dF9zbGVlcCAoQ2hyaXMsCkNocmlzdGlhbikKCkZ1bGwgYXVkaXQ6Ci0gZG1hLWZlbmNlLmg6IFVz
ZXMgTUFYX1NDSEVEVUxFX1RJTU9VVCwgZ29vZCBjaGFuY2UgdGhpcyBzbGVlcHMKLSBkbWEtcmVz
di5jOiBUaW1lb3V0IGFsd2F5cyBhdCBsZWFzdCAxCi0gc3QtZG1hLWZlbmNlLmM6IFNhdmUgdG8g
c2xlZXAgaW4gdGVzdGNhc2VzCi0gYW1kZ3B1X2NzLmM6IEJvdGggY2FsbGVycyBhcmUgZm9yIHZh
cmlhbnRzIG9mIHRoZSB3YWl0IGlvY3RsCi0gYW1kZ3B1X2RldmljZS5jOiBUd28gY2FsbGVycyBp
biB2cmFtIHJlY292ZXIgY29kZSwgYm90aCByaWdodCBuZXh0CiAgdG8gbXV0ZXhfbG9jay4KLSBh
bWRncHVfdm0uYzogVXNlIGluIHRoZSB2bV93YWl0IGlvY3RsLCBuZXh0IHRvIF9yZXNlcnZlL3Vu
cmVzZXJ2ZQotIHJlbWFpbmluZyBmdW5jdGlvbnMgaW4gYW1kZ3B1OiBBbGwgZm9yIHRlc3RfaWIg
aW1wbGVtZW50YXRpb25zIGZvcgogIHZhcmlvdXMgZW5naW5lcywgY2FsbGVyIGZvciB0aGF0IGxv
b2tzIGFsbCBzYWZlIChkZWJ1Z2ZzLCBkcml2ZXIKICBsb2FkLCByZXNldCkKLSBldG5hdml2OiBh
bm90aGVyIHdhaXQgaW9jdGwKLSBoYWJhbmFsYWJzOiBhbm90aGVyIHdhaXQgaW9jdGwKLSBub3V2
ZWF1X2ZlbmNlLmM6IGhhcmRjb2RlZCAxNSpIWiAuLi4gZ2xvcmlvdXMKLSBub3V2ZWF1X2dlbS5j
OiBoYXJkY29kZWQgMipIWiAuLi4gc28gbm90IGV2ZW4gc3VwZXIgY29uc2lzdGVudCwgYnV0CiAg
dGhpcyBvbmUgZG9lcyBoYXZlIGEgV0FSTl9PTiA6LS8gQXQgbGVhc3QgdGhpcyBvbmUgaXMgb25s
eSBhCiAgZmFsbGJhY2sgcGF0aCBmb3Igd2hlbiBrbWFsbG9jIGZhaWxzLiBNYXliZSB0aGlzIHNo
b3VsZCBiZSBwdXQgb250bwogIHNvbWUgd29ya2VyIGxpc3QgaW5zdGVhZCwgaW5zdGVhZCBvZiBh
IHdvcmsgcGVyIHVuYW1wIC4uLgotIGk5MTUvc2VsZnRlc3RzOiBIYXJkZWNvZGVkIEhaIC8gNCBv
ciBIWiAvIDgKLSBpOTE1L2d0L3NlbGZ0ZXN0czogR29pbmcgdXAgdGhlIGNhbGxjaGFpbiBsb29r
cyBzYWZlIGxvb2tpbmcgYXQKICBuZWFyYnkgY2FsbGVycwotIGk5MTUvZ3QvaW50ZWxfZ3RfcmVx
dWVzdHMuYy4gV3JhcHBlZCBpbiBhIG11dGV4X2xvY2sKLSBpOTE1L2dlbV9pOTE1X2dlbV93YWl0
LmM6IFRoZSBpOTE1LXZlcnNpb24gd2hpY2ggaXMgY2FsbGVkIGluc3RlYWQKICBmb3IgaTkxNSBm
ZW5jZXMgYWxyZWFkeSBoYXMgYSBtaWdodF9zbGVlcCgpIGFubm90YXRpb24sIHNvIGFsbCBnb29k
CgpDYzogQWxleCBEZXVjaGVyIDxhbGV4YW5kZXIuZGV1Y2hlckBhbWQuY29tPgpDYzogTHVjYXMg
U3RhY2ggPGwuc3RhY2hAcGVuZ3V0cm9uaXguZGU+CkNjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1
bGFAbGludXguaW50ZWwuY29tPgpDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5A
bGludXguaW50ZWwuY29tPgpDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29t
PgpDYzogQmVuIFNrZWdncyA8YnNrZWdnc0ByZWRoYXQuY29tPgpDYzogIlZNd2FyZSBHcmFwaGlj
cyIgPGxpbnV4LWdyYXBoaWNzLW1haW50YWluZXJAdm13YXJlLmNvbT4KQ2M6IE9kZWQgR2FiYmF5
IDxvZGVkLmdhYmJheUBnbWFpbC5jb20+CkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcK
Q2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpDYzogbGludXgtcmRtYUB2Z2VyLmtl
cm5lbC5vcmcKQ2M6IGFtZC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBpbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5p
bnRlbC5jb20+CkNjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+
ClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyB8IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMg
Yi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMKaW5kZXggOTBlZGYyYjI4MWIwLi42NTZlOWFj
MmQwMjggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYworKysgYi9kcml2
ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMKQEAgLTIwOCw2ICsyMDgsOCBAQCBkbWFfZmVuY2Vfd2Fp
dF90aW1lb3V0KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBib29sIGludHIsIHNpZ25lZCBsb25n
IHRpbWVvdXQpCiAJaWYgKFdBUk5fT04odGltZW91dCA8IDApKQogCQlyZXR1cm4gLUVJTlZBTDsK
IAorCW1pZ2h0X3NsZWVwKCk7CisKIAl0cmFjZV9kbWFfZmVuY2Vfd2FpdF9zdGFydChmZW5jZSk7
CiAJaWYgKGZlbmNlLT5vcHMtPndhaXQpCiAJCXJldCA9IGZlbmNlLT5vcHMtPndhaXQoZmVuY2Us
IGludHIsIHRpbWVvdXQpOwotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlz
dGluZm8vbGluYXJvLW1tLXNpZwo=

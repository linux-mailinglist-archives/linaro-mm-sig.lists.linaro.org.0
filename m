Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E66408C7B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 15:18:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BBA2569D81
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 13:18:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6322C69CE8; Mon, 13 Sep 2021 13:18:34 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E2C266216E;
	Mon, 13 Sep 2021 13:18:31 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 95B2962D35
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7138461C3D; Mon, 13 Sep 2021 13:17:43 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 by lists.linaro.org (Postfix) with ESMTPS id 50C2463258
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:39 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id b6so14629386wrh.10
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 06:17:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lbgl/54L0ByItbAbC8EzWBEvSdtx8l90TnELASVZX00=;
 b=iJOKoRQZom4Sc7ZUlbp5EvyaFDX2nTXiE90tOHQr5LZQj1/XM3/yBZ8JU1ePegl24p
 r6nsTk86W7bicIEP0bSzE9Y+5WtaysTHNMU6W0g6hgtJr7rhx2NXZiQ8eke4Ja3ngow8
 p9K9T/pz2BZmONYjQWE5ehxEaT0FrXul22H0cSO4m5p+FAawdREtEtlaqtJ6+I9ip9Ep
 HwX2lJwtK9U/VpioFFhIp/9yGUy+s1yPkI/aiS1EWekffaUXmOQm60cnDRb+cs/6zy+C
 03PMjR3yDLMvjvDRKgddWpLbuJ7u2CAW4Yo4jIXoPcu3HdZo4h51MIuAjU38t4bl3QkN
 Sdfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lbgl/54L0ByItbAbC8EzWBEvSdtx8l90TnELASVZX00=;
 b=Qd4Y6Hyaxo3ucv+Rx99V83q0CyTH8SMGvKNwfSjN8y73tuzJTWAziFJu8tRJxUHspX
 MP/zkZIRjXyju6PMVO6R7pI6rB/RbpwTMJTR39wQeDzk+UjaAF5eSwtATwjOd0iKE8W8
 rPiLri8EvRGqm6EQnshLAQlmNBItmnL0HTGYDMqouarWP8pT1b1V6FASHyKKu22iSp8E
 F36Cx+kDT6Q6IxA+EajvjpneDIjZcyYbsKnV5gW8lw8I7Mo9egQHaVDKefEepw/okcMu
 GiVp7a7MfNSxEwjckY5uOgZmCyWsgWijDh8spkxgQa8HA4j/WcXy00K+bHs1L284N46Q
 FTTw==
X-Gm-Message-State: AOAM533VRPheKmmykvP6Jze8DvsJgs2HgZCAxt+dbL7WVEMnaM93mX5k
 FzSdEBPfbxhuh6csOKnrFKI6eCPg22e51myy
X-Google-Smtp-Source: ABdhPJwPrQJseqgxCrrGZ8zPFDwH+kh7wzQ8kZ7/U69mWduIMhCl9vLHUzDTMpvVj7Y2mZQF8XonXw==
X-Received: by 2002:adf:c54f:: with SMTP id s15mr12536413wrf.222.1631539056894; 
 Mon, 13 Sep 2021 06:17:36 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 h18sm7602834wrb.33.2021.09.13.06.17.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Sep 2021 06:17:36 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Date: Mon, 13 Sep 2021 15:17:00 +0200
Message-Id: <20210913131707.45639-20-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210913131707.45639-1-christian.koenig@amd.com>
References: <20210913131707.45639-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 19/26] drm/i915: use new cursor in
 intel_prepare_plane_fb
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
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
Cc: intel-gfx@lists.freedesktop.org, daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA2ICsrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5z
ZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IGVlYzZjOWU5Y2RhNy4uMTFjMzhlMGY3ZmUwIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTExMzMs
NiArMTExMzMsNyBAQCBpbnRlbF9wcmVwYXJlX3BsYW5lX2ZiKHN0cnVjdCBkcm1fcGxhbmUgKl9w
bGFuZSwKIAlpOTE1X2dlbV9vYmplY3RfZmx1c2hfZnJvbnRidWZmZXIob2JqLCBPUklHSU5fRElS
VFlGQik7CiAKIAlpZiAoIW5ld19wbGFuZV9zdGF0ZS0+dWFwaS5mZW5jZSkgeyAvKiBpbXBsaWNp
dCBmZW5jaW5nICovCisJCXN0cnVjdCBkbWFfcmVzdl9jdXJzb3IgY3Vyc29yOwogCQlzdHJ1Y3Qg
ZG1hX2ZlbmNlICpmZW5jZTsKIAogCQlyZXQgPSBpOTE1X3N3X2ZlbmNlX2F3YWl0X3Jlc2VydmF0
aW9uKCZzdGF0ZS0+Y29tbWl0X3JlYWR5LApAQCAtMTExNDMsMTEgKzExMTQ0LDEwIEBAIGludGVs
X3ByZXBhcmVfcGxhbmVfZmIoc3RydWN0IGRybV9wbGFuZSAqX3BsYW5lLAogCQlpZiAocmV0IDwg
MCkKIAkJCWdvdG8gdW5waW5fZmI7CiAKLQkJZmVuY2UgPSBkbWFfcmVzdl9nZXRfZXhjbF91bmxv
Y2tlZChvYmotPmJhc2UucmVzdik7Ci0JCWlmIChmZW5jZSkgeworCQlkbWFfcmVzdl9mb3JfZWFj
aF9mZW5jZV91bmxvY2tlZChvYmotPmJhc2UucmVzdiwgJmN1cnNvciwgZmFsc2UsCisJCQkJCQkg
ZmVuY2UpIHsKIAkJCWFkZF9ycHNfYm9vc3RfYWZ0ZXJfdmJsYW5rKG5ld19wbGFuZV9zdGF0ZS0+
aHcuY3J0YywKIAkJCQkJCSAgIGZlbmNlKTsKLQkJCWRtYV9mZW5jZV9wdXQoZmVuY2UpOwogCQl9
CiAJfSBlbHNlIHsKIAkJYWRkX3Jwc19ib29zdF9hZnRlcl92YmxhbmsobmV3X3BsYW5lX3N0YXRl
LT5ody5jcnRjLAotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8v
bGluYXJvLW1tLXNpZwo=

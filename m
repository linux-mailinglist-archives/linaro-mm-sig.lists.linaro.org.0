Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C137181A74
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 Mar 2020 14:55:00 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 327AF60804
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 Mar 2020 13:54:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 208CA65FDC; Wed, 11 Mar 2020 13:54:59 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 68DB765FE7;
	Wed, 11 Mar 2020 13:52:25 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id DBBFB65FD3
 for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Mar 2020 13:52:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CE6FA65FE4; Wed, 11 Mar 2020 13:52:21 +0000 (UTC)
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by lists.linaro.org (Postfix) with ESMTPS id 6803365FD3
 for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Mar 2020 13:52:06 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id 25so2175406wmk.3
 for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Mar 2020 06:52:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BrBZ7BRIxlz8FrRAnyr/unjtGHr0zUbPTL3/EC4XXLw=;
 b=pEoxdTryENWsB/t2N4xT8k7oI0X9Ca+v7qy3/50s+EGcyqXxtnQLC6+PBgTg/juy/+
 4CwTTuanJ1bfmNSELudWSL0zNYCzt+DFtJLA3pc8r3ecOHqZQfNgY3msAsfIG8EC3NXV
 NhSTvqIZWgA3Eegl3VBhudokDEqaHN/iMPSZYtv+zZZVWn7eV8wzT+xGdgIvfI76TllT
 QIqZbzEhH96f3NQsT21sqOCRmz79AKYHdtO7PeyoCG0YHbgStFCdH8KfWr7sqG5Z3FJK
 0kDdtfqUJDIVBgwWzGZKSBBEMOjJUNB1yJ+gikUCt7roZhpbJsMAEnv6VrlVhFVPU85Q
 SrGw==
X-Gm-Message-State: ANhLgQ0x8+LbHzBJRW6w0TDDS1gasQ8TevNFdEOGModfTvdRMnFRyMxF
 /Wj6hK+WVDv5/JcNJqtY+4aJIuiU
X-Google-Smtp-Source: ADFU+vsPAfdCms9K/oMpKj27gQSzAvyZZSi4wAa/XqnIbxORrNV6RGa/WoMb+HcXHpWWm6Gw162qsA==
X-Received: by 2002:a1c:35c6:: with SMTP id c189mr3752519wma.108.1583934725433; 
 Wed, 11 Mar 2020 06:52:05 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:8dc:e796:e7da:a319])
 by smtp.gmail.com with ESMTPSA id 138sm3183811wmb.21.2020.03.11.06.52.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 06:52:04 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: David1.Zhou@amd.com, hch@infradead.org, jgg@ziepe.ca, daniel@ffwll.ch,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Wed, 11 Mar 2020 14:51:56 +0100
Message-Id: <20200311135158.3310-5-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200311135158.3310-1-christian.koenig@amd.com>
References: <20200311135158.3310-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 4/6] drm/amdgpu: add checks if DMA-buf P2P
	is supported
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

Q2hlY2sgaWYgd2UgY2FuIGRvIHBlZXIycGVlciBvbiB0aGUgUENJZSBidXMuCgpTaWduZWQtb2Zm
LWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYyB8IDQgKysrKwogMSBmaWxl
IGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9h
bWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9h
bWRncHVfZG1hX2J1Zi5jCmluZGV4IGFlZjEyZWUyZjFlMy4uYmJmNjc4MDBjOGE2IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMKQEAgLTM4LDYgKzM4LDcg
QEAKICNpbmNsdWRlIDxkcm0vYW1kZ3B1X2RybS5oPgogI2luY2x1ZGUgPGxpbnV4L2RtYS1idWYu
aD4KICNpbmNsdWRlIDxsaW51eC9kbWEtZmVuY2UtYXJyYXkuaD4KKyNpbmNsdWRlIDxsaW51eC9w
Y2ktcDJwZG1hLmg+CiAKIC8qKgogICogYW1kZ3B1X2dlbV9wcmltZV92bWFwIC0gJmRtYV9idWZf
b3BzLnZtYXAgaW1wbGVtZW50YXRpb24KQEAgLTE3OSw2ICsxODAsOSBAQCBzdGF0aWMgaW50IGFt
ZGdwdV9kbWFfYnVmX2F0dGFjaChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLAogCXN0cnVjdCBhbWRn
cHVfZGV2aWNlICphZGV2ID0gYW1kZ3B1X3R0bV9hZGV2KGJvLT50Ym8uYmRldik7CiAJaW50IHI7
CiAKKwlpZiAocGNpX3AycGRtYV9kaXN0YW5jZV9tYW55KGFkZXYtPnBkZXYsICZhdHRhY2gtPmRl
diwgMSwgdHJ1ZSkgPCAwKQorCQlhdHRhY2gtPnBlZXIycGVlciA9IGZhbHNlOworCiAJaWYgKGF0
dGFjaC0+ZGV2LT5kcml2ZXIgPT0gYWRldi0+ZGV2LT5kcml2ZXIpCiAJCXJldHVybiAwOwogCi0t
IAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2ln
Cg==

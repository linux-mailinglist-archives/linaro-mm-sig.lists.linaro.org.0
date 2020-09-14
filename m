Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D34FB268C37
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Sep 2020 15:30:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 011866186A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Sep 2020 13:30:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E0BE46650E; Mon, 14 Sep 2020 13:30:30 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 321626650F;
	Mon, 14 Sep 2020 13:29:36 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4FEC46179D
 for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Sep 2020 13:29:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 41B2D617F1; Mon, 14 Sep 2020 13:29:32 +0000 (UTC)
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
 [209.85.208.65])
 by lists.linaro.org (Postfix) with ESMTPS id E9E2A617D8
 for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Sep 2020 13:29:30 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id g4so17638539edk.0
 for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Sep 2020 06:29:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ShM3ina3e3/hH7dOyVac4CL9sFVc4RQd6mh3jLnIlg0=;
 b=LlpFcpp8TE7ZSmsJpumgsr6sB/eQrZJqOBLEA9NrWR2F75mloz/MVG5YsjSjwwgCYa
 E0iW8rr/M7kiOrjm07qlZLe68KOCc0e26WRSAb27w5IQg+NHfEDk0FIBxvNps/3SkhJl
 vS2L6OV7YbXTsf4qxqVc79gicWPQZoItgvNWQKuxN1rDlALA0FoEmMzTSPMsniuOicNG
 RpTVJZCkeQPnSCKT1tbVdF3nRSecy5YghxGK0h54rSiz98zCwnYRN6Ec/Ti5DqfUr4J4
 LfDggxPSEVBPqK6V3CmvyaxA6Jir5oBj4CMqpdHZUsuaoVDKCIHhPD0So59XB3FhbwNS
 haFQ==
X-Gm-Message-State: AOAM5302OaGWcvHVjEBMTxLxTt9zNn0acVdFSGNmMMgIyuqzT20tKmZW
 baJqSlkJFBKHGrj6f2Y5Tuc=
X-Google-Smtp-Source: ABdhPJxDNWaaOe6mtDbVu9uBxPuALA0/yZsLGV/qaVVWO83ofnwCuhSwypEKZj15QfAv8gcowcwWvA==
X-Received: by 2002:a05:6402:17b9:: with SMTP id
 j25mr17411290edy.203.1600090170135; 
 Mon, 14 Sep 2020 06:29:30 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:6179:d701:8021:da3d])
 by smtp.gmail.com with ESMTPSA id d6sm9575625edm.31.2020.09.14.06.29.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Sep 2020 06:29:29 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: akpm@linux-foundation.org
Date: Mon, 14 Sep 2020 15:29:19 +0200
Message-Id: <20200914132920.59183-2-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200914132920.59183-1-christian.koenig@amd.com>
References: <20200914132920.59183-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH 1/2] drm/shmem-helpers: revert "Redirect
	mmap for imported dma-buf"
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

VGhpcyByZXZlcnRzIGNvbW1pdCAyNmQzYWMzY2IwNGQxNzFhODYxOTUyZTg5MzI0ZTM0NzU5OGEz
NDdmLgoKV2UgbmVlZCB0byBmaWd1cmUgb3V0IGlmIGRtYV9idWZfbW1hcCgpIGlzIHZhbGlkIG9y
IG5vdCBmaXJzdC4KClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5r
b2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9zaG1lbV9oZWxwZXIu
YyB8IDMgLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9zaG1lbV9oZWxwZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9k
cm1fZ2VtX3NobWVtX2hlbHBlci5jCmluZGV4IDBhOTUyZjI3YzE4NC4uY2Q3MjczNDNmNzJiIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9zaG1lbV9oZWxwZXIuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9zaG1lbV9oZWxwZXIuYwpAQCAtNTk0LDkgKzU5NCw2IEBA
IGludCBkcm1fZ2VtX3NobWVtX21tYXAoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmosIHN0cnVj
dCB2bV9hcmVhX3N0cnVjdCAqdm1hKQogCS8qIFJlbW92ZSB0aGUgZmFrZSBvZmZzZXQgKi8KIAl2
bWEtPnZtX3Bnb2ZmIC09IGRybV92bWFfbm9kZV9zdGFydCgmb2JqLT52bWFfbm9kZSk7CiAKLQlp
ZiAob2JqLT5pbXBvcnRfYXR0YWNoKQotCQlyZXR1cm4gZG1hX2J1Zl9tbWFwKG9iai0+ZG1hX2J1
Ziwgdm1hLCAwKTsKLQogCXNobWVtID0gdG9fZHJtX2dlbV9zaG1lbV9vYmoob2JqKTsKIAogCXJl
dCA9IGRybV9nZW1fc2htZW1fZ2V0X3BhZ2VzKHNobWVtKTsKLS0gCjIuMTcuMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGlu
YXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

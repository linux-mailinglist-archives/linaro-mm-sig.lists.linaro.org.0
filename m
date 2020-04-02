Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D7CCB1B6D31
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 07:31:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 05089666F8
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 05:31:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id EDBD76670E; Fri, 24 Apr 2020 05:31:15 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 45523619CF;
	Fri, 24 Apr 2020 05:29:42 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2B7D665FCE
 for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Apr 2020 01:25:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1ECBD65FE5; Thu,  2 Apr 2020 01:25:22 +0000 (UTC)
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by lists.linaro.org (Postfix) with ESMTPS id 3AD2865FCE
 for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Apr 2020 01:25:21 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id fh8so872170pjb.5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 01 Apr 2020 18:25:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ECaKk1XEhaLeQWM1QY7b2cbJfc2H+NtdzI3cEs6W3bc=;
 b=QhYziMCNEoU01qQU8niYfCSsqgCN7o7MH/cvqSfhcEvSz0DSUx17f4IHGszIEafJVG
 vsyvzh1FSN0hFQxDO0zxOtJt0dBjIKr6J5tAN3a9RxzTJuPHQrtlptCLF6kJxGzuxew6
 Yb7T0FyPg6Rp5/OhgQ4c8csP9Iu1tCjIVd1T+3mQ7V6txXXP9UKsx4XKuD9A6GJs7BN6
 Qiy35GKRwfYD5M+42l0rN/9rs2ZdjF6vB6Spizv3GQ9cabnaf/TuP49XDC8HVkO68693
 wbMCldul+RYue+X/dFvriSGqiKgtDoTVpt6EYfHkxTAGC4aRYbqbeHwGKAiEMop0iOTw
 gcCw==
X-Gm-Message-State: AGi0PuYkxZlPWR6ovF1p4DhrZBJGNrgVZR5qUI0twANzybkM19nKnC4i
 EoIsoVxfIXsEtu3htSZMdmM=
X-Google-Smtp-Source: APiQypLOFU9FlGJw8iOOANTLu4h97F20JAA88jZyZ5O8imCDYlYaifG5zMltxu9kuj6+J1fWyc7dAQ==
X-Received: by 2002:a17:90a:36c7:: with SMTP id
 t65mr946992pjb.182.1585790720459; 
 Wed, 01 Apr 2020 18:25:20 -0700 (PDT)
Received: from OptiPlexFedora.fios-router.home ([47.144.161.84])
 by smtp.gmail.com with ESMTPSA id q71sm2516633pfc.92.2020.04.01.18.25.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Apr 2020 18:25:19 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com, Laura Abbott <labbott@redhat.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 =?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?= <arve@android.com>,
 Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>,
 Joel Fernandes <joel@joelfernandes.org>,
 Christian Brauner <christian@brauner.io>, devel@driverdev.osuosl.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-kernel@vger.kernel.org
Date: Wed,  1 Apr 2020 18:25:15 -0700
Message-Id: <20200402012515.429329-1-jbwyatt4@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Fri, 24 Apr 2020 05:29:38 +0000
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Subject: [Linaro-mm-sig] [PATCH] staging: android: ion: Fix parenthesis
	alignment
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

Rml4IDIgcGFyZW50aGVzaXMgYWxpZ25tZW50IGlzc3Vlcy4KClJlcG9ydGVkIGJ5IGNoZWNrcGF0
Y2guCgpTaWduZWQtb2ZmLWJ5OiBKb2huIEIuIFd5YXR0IElWIDxqYnd5YXR0NEBnbWFpbC5jb20+
Ci0tLQogZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbl9wYWdlX3Bvb2wuYyB8IDQgKyst
LQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvYW5kcm9pZC9pb24vaW9uX3BhZ2VfcG9vbC5jIGIvZHJp
dmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbl9wYWdlX3Bvb2wuYwppbmRleCBmODVlYzViMTZi
NjUuLjAxOThiODg2ZDkwNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQvaW9u
L2lvbl9wYWdlX3Bvb2wuYworKysgYi9kcml2ZXJzL3N0YWdpbmcvYW5kcm9pZC9pb24vaW9uX3Bh
Z2VfcG9vbC5jCkBAIC0zNyw3ICszNyw3IEBAIHN0YXRpYyB2b2lkIGlvbl9wYWdlX3Bvb2xfYWRk
KHN0cnVjdCBpb25fcGFnZV9wb29sICpwb29sLCBzdHJ1Y3QgcGFnZSAqcGFnZSkKIAl9CiAKIAlt
b2Rfbm9kZV9wYWdlX3N0YXRlKHBhZ2VfcGdkYXQocGFnZSksIE5SX0tFUk5FTF9NSVNDX1JFQ0xB
SU1BQkxFLAotCQkJCQkJCTEgPDwgcG9vbC0+b3JkZXIpOworCQkJICAgIDEgPDwgcG9vbC0+b3Jk
ZXIpOwogCW11dGV4X3VubG9jaygmcG9vbC0+bXV0ZXgpOwogfQogCkBAIC01Nyw3ICs1Nyw3IEBA
IHN0YXRpYyBzdHJ1Y3QgcGFnZSAqaW9uX3BhZ2VfcG9vbF9yZW1vdmUoc3RydWN0IGlvbl9wYWdl
X3Bvb2wgKnBvb2wsIGJvb2wgaGlnaCkKIAogCWxpc3RfZGVsKCZwYWdlLT5scnUpOwogCW1vZF9u
b2RlX3BhZ2Vfc3RhdGUocGFnZV9wZ2RhdChwYWdlKSwgTlJfS0VSTkVMX01JU0NfUkVDTEFJTUFC
TEUsCi0JCQkJCQkJLSgxIDw8IHBvb2wtPm9yZGVyKSk7CisJCQkgICAgLSgxIDw8IHBvb2wtPm9y
ZGVyKSk7CiAJcmV0dXJuIHBhZ2U7CiB9CiAKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QK
TGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

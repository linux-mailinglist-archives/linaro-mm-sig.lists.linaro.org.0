Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D842C1B6D30
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 07:30:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 011EF6670E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 05:30:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E5A0966710; Fri, 24 Apr 2020 05:30:37 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 20692619C1;
	Fri, 24 Apr 2020 05:29:41 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5EDC965FCE
 for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Apr 2020 01:23:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3FF6A65FE5; Thu,  2 Apr 2020 01:23:49 +0000 (UTC)
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by lists.linaro.org (Postfix) with ESMTPS id 4C96165FCE
 for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Apr 2020 01:23:48 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id d24so708337pll.8
 for <linaro-mm-sig@lists.linaro.org>; Wed, 01 Apr 2020 18:23:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ECaKk1XEhaLeQWM1QY7b2cbJfc2H+NtdzI3cEs6W3bc=;
 b=sStRNiSMvaKHP+dej8LkkirWuQxGt0/+Xo1rc80IX6GpHnbui9YQC6FY/vD2ylpR+y
 vpVY0wUMbGAPAgD6yzhlXAivtw6AGXJP0itcpq6bcINtU3Fs+e4ttd4bEPj2jpq6jWDp
 tDZvIEATYAkm8mL9+zA+AiEUR5sAG8+yyEmObI0GSwquGhS9mXvdkCZy9bNRATkEp6bA
 V8clW3xbu/R8feJtCx7bAQj4fmYbYnE3o8y+7YmSzfaZM0UaWCBjGKuuHkG2U/3EMThm
 6DkQRpLDTqJPFnDvDJvTTHxjPyLU7bC12PFak/Nf15yhwTibgxSKcXl3iRMTCYGqcjbL
 dI3g==
X-Gm-Message-State: AGi0PuYBJMzImhGEq7qYPxh08dGq44rfNZ0pzoSQclUxZlDP5bn1F789
 G77ldx1refbEq8ThJ825pDU=
X-Google-Smtp-Source: APiQypKphdtygtFszPZHfDmC+v0cOhFzs1P9x5/bGH+iexQPlMgBXonWT55xdU1Z9qFQawYE5bgI5Q==
X-Received: by 2002:a17:90a:a602:: with SMTP id
 c2mr931092pjq.135.1585790627416; 
 Wed, 01 Apr 2020 18:23:47 -0700 (PDT)
Received: from OptiPlexFedora.fios-router.home ([47.144.161.84])
 by smtp.gmail.com with ESMTPSA id x71sm2424587pfd.129.2020.04.01.18.23.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Apr 2020 18:23:46 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: Laura Abbott <labbott@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 =?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?= <arve@android.com>,
 Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>,
 Joel Fernandes <joel@joelfernandes.org>,
 Christian Brauner <christian@brauner.io>, devel@driverdev.osuosl.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-kernel@vger.kernel.org
Date: Wed,  1 Apr 2020 18:23:15 -0700
Message-Id: <20200402012315.429064-1-jbwyatt4@gmail.com>
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

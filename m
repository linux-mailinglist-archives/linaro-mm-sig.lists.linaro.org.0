Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 264901CD49D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 May 2020 11:13:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4475461778
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 May 2020 09:13:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 38834617CF; Mon, 11 May 2020 09:13:19 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EFBD561868;
	Mon, 11 May 2020 09:12:07 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 31F8061778
 for <linaro-mm-sig@lists.linaro.org>; Mon, 11 May 2020 09:11:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1D119617CC; Mon, 11 May 2020 09:11:58 +0000 (UTC)
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by lists.linaro.org (Postfix) with ESMTPS id 51F9F6179D
 for <linaro-mm-sig@lists.linaro.org>; Mon, 11 May 2020 09:11:56 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id e16so9939308wra.7
 for <linaro-mm-sig@lists.linaro.org>; Mon, 11 May 2020 02:11:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0CinOkbYS8oPgPVLI49BKt2JzQLqGPZqhctItxxwelA=;
 b=iv/roCscKUe9naovx7mclnxZGxKnAHus6XHO54sRhD/8roVo1nESzpxaZD9FSXvbyG
 VL6SVqGYPcLHxkv8BIqVIZXYrNyyiXqFx7hweGstvgEO0ZCzJebPkdiwdco/VxrhpYZW
 RGW7iNjetODFPxlbAvWhZBJYfS++FqbP+mW3CJRDYO3VuMEx3g/ALYYSDwKbynL8fjLa
 CaHelHZFysDzXf6xM1gOEZ4nJwy5595Klvd0Mli++BNKysXANwuUOgjmJ0MPwC//qpNi
 OEZ1/3pFzzA22K4omfHZVucavn27RYutqWOR02MXv78HPg26dN8yl4bO3KZdL0F2ByBK
 Falw==
X-Gm-Message-State: AGi0PuZjoyFq7vWAcOKiMkebiVU9q33AeWjpyZJlR/EydgwR4fRZsXIi
 6a6vENg0n1Ah9E4on42Cvv06Bg==
X-Google-Smtp-Source: APiQypIe/NcTRB7OjwoRrwiqdLysAONSgQ8XmUpqQiiFNg4nNfp3xqmACL1LU9lULCHwhJ4moMYGIg==
X-Received: by 2002:adf:e582:: with SMTP id l2mr18950634wrm.392.1589188315492; 
 Mon, 11 May 2020 02:11:55 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id t4sm17506299wri.54.2020.05.11.02.11.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 02:11:54 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: LKML <linux-kernel@vger.kernel.org>
Date: Mon, 11 May 2020 11:11:42 +0200
Message-Id: <20200511091142.208787-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200511091142.208787-1-daniel.vetter@ffwll.ch>
References: <20200511091142.208787-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Oded Gabbay <oded.gabbay@gmail.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linaro-mm-sig@lists.linaro.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Olof Johansson <olof@lixom.net>, Daniel Vetter <daniel.vetter@intel.com>,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH 3/3] misc/habalabs: don't set default
	fence_ops->wait
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

SXQncyB0aGUgZGVmYXVsdC4KCkFsc28gc28gbXVjaCBmb3IgIndlJ3JlIG5vdCBnb2luZyB0byB0
ZWxsIHRoZSBncmFwaGljcyBwZW9wbGUgaG93IHRvCnJldmlldyB0aGVpciBjb2RlIiwgZG1hX2Zl
bmNlIGlzIGEgcHJldHR5IGNvcmUgcGllY2Ugb2YgZ3B1IGRyaXZlcgppbmZyYXN0cnVjdHVyZS4g
QW5kIGl0J3MgdmVyeSBtdWNoIHVhcGkgcmVsZXZhbnQsIGluY2x1ZGluZyBwaWxlcyBvZgpjb3Jy
ZXNwb25kaW5nIHVzZXJzcGFjZSBwcm90b2NvbHMgYW5kIGxpYnJhcmllcyBmb3IgaG93IHRvIHBh
c3MgdGhlc2UKYXJvdW5kLgoKV291bGQgYmUgZ3JlYXQgaWYgaGFiYW5hbGFicyB3b3VsZCBub3Qg
dXNlIHRoaXMgKGZyb20gYSBxdWljayBsb29rCml0J3Mgbm90IG5lZWRlZCBhdCBhbGwpLCBzaW5j
ZSBvcGVuIHNvdXJjZSB0aGUgdXNlcnNwYWNlIGFuZCBwbGF5aW5nCmJ5IHRoZSB1c3VhbCBydWxl
cyBpc24ndCBvbiB0aGUgdGFibGUuIElmIHRoYXQncyBub3QgcG9zc2libGUgKGJlY2F1c2UKaXQn
cyBhY3R1YWxseSB1c2luZyB0aGUgdWFwaSBwYXJ0IG9mIGRtYV9mZW5jZSB0byBpbnRlcmFjdCB3
aXRoIGdwdQpkcml2ZXJzKSB0aGVuIHdlIGhhdmUgZXhhY3RseSB3aGF0IGV2ZXJ5b25lIHByb21p
c2VkIHdlJ2Qgd2FudCB0bwphdm9pZC4KClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRh
bmllbC52ZXR0ZXJAaW50ZWwuY29tPgpDYzogR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVna2hAbGlu
dXhmb3VuZGF0aW9uLm9yZz4KQ2M6IAlPbG9mIEpvaGFuc3NvbiA8b2xvZkBsaXhvbS5uZXQ+CkNj
OiBPZGVkIEdhYmJheSA8b2RlZC5nYWJiYXlAZ21haWwuY29tPgpDYzogU3VtaXQgU2Vtd2FsIDxz
dW1pdC5zZW13YWxAbGluYXJvLm9yZz4KQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZwpD
YzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCi0tLQogZHJpdmVycy9taXNjL2hhYmFu
YWxhYnMvY29tbWFuZF9zdWJtaXNzaW9uLmMgfCAxIC0KIDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0
aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9taXNjL2hhYmFuYWxhYnMvY29tbWFuZF9zdWJt
aXNzaW9uLmMgYi9kcml2ZXJzL21pc2MvaGFiYW5hbGFicy9jb21tYW5kX3N1Ym1pc3Npb24uYwpp
bmRleCA0MDkyNzZiNjM3NGQuLmNjM2NlNzU5YjZjMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9taXNj
L2hhYmFuYWxhYnMvY29tbWFuZF9zdWJtaXNzaW9uLmMKKysrIGIvZHJpdmVycy9taXNjL2hhYmFu
YWxhYnMvY29tbWFuZF9zdWJtaXNzaW9uLmMKQEAgLTQ2LDcgKzQ2LDYgQEAgc3RhdGljIGNvbnN0
IHN0cnVjdCBkbWFfZmVuY2Vfb3BzIGhsX2ZlbmNlX29wcyA9IHsKIAkuZ2V0X2RyaXZlcl9uYW1l
ID0gaGxfZmVuY2VfZ2V0X2RyaXZlcl9uYW1lLAogCS5nZXRfdGltZWxpbmVfbmFtZSA9IGhsX2Zl
bmNlX2dldF90aW1lbGluZV9uYW1lLAogCS5lbmFibGVfc2lnbmFsaW5nID0gaGxfZmVuY2VfZW5h
YmxlX3NpZ25hbGluZywKLQkud2FpdCA9IGRtYV9mZW5jZV9kZWZhdWx0X3dhaXQsCiAJLnJlbGVh
c2UgPSBobF9mZW5jZV9yZWxlYXNlCiB9OwogCi0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

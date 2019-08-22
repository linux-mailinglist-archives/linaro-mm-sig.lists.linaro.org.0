Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5330C98F7E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Aug 2019 11:37:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7303361810
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Aug 2019 09:37:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 64B2561836; Thu, 22 Aug 2019 09:37:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7E06561877;
	Thu, 22 Aug 2019 09:37:04 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 523C661868
 for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Aug 2019 09:36:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3C3E961836; Thu, 22 Aug 2019 09:36:59 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by lists.linaro.org (Postfix) with ESMTPS id 5121661836
 for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Aug 2019 09:36:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id BFA71C08C33E;
 Thu, 22 Aug 2019 09:36:57 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-116-60.ams2.redhat.com
 [10.36.116.60])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1B1BD5D712;
 Thu, 22 Aug 2019 09:36:55 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 6A16297A1; Thu, 22 Aug 2019 11:36:54 +0200 (CEST)
From: Gerd Hoffmann <kraxel@redhat.com>
To: dri-devel@lists.freedesktop.org
Date: Thu, 22 Aug 2019 11:36:54 +0200
Message-Id: <20190822093654.23752-4-kraxel@redhat.com>
In-Reply-To: <20190822093654.23752-1-kraxel@redhat.com>
References: <20190822093654.23752-1-kraxel@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Thu, 22 Aug 2019 09:36:57 +0000 (UTC)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Gerd Hoffmann <kraxel@redhat.com>, open list <linux-kernel@vger.kernel.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK"
 <linaro-mm-sig@lists.linaro.org>, laurent.pinchart@ideasonboard.com,
 daniel@ffwll.ch,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: [Linaro-mm-sig] [PATCH 3/3] udmabuf: check that flags has no
	unsupported bits set
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

U2lnbmVkLW9mZi1ieTogR2VyZCBIb2ZmbWFubiA8a3JheGVsQHJlZGhhdC5jb20+ClJlcG9ydGVk
LWJ5OiBZYW5uIERyb25lYXVkIDx5ZHJvbmVhdWRAb3B0ZXlhLmNvbT4KLS0tCiBkcml2ZXJzL2Rt
YS1idWYvdWRtYWJ1Zi5jIHwgMyArKysKIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVm
L3VkbWFidWYuYwppbmRleCA2YzNlYzhmY2VmMDEuLmNhMTM2NDEwMmIxOCAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9kbWEtYnVmL3VkbWFidWYuYworKysgYi9kcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5j
CkBAIC0xMzEsNiArMTMxLDkgQEAgc3RhdGljIGxvbmcgdWRtYWJ1Zl9jcmVhdGUoY29uc3Qgc3Ry
dWN0IHVkbWFidWZfY3JlYXRlX2xpc3QgKmhlYWQsCiAJaW50IHNlYWxzLCByZXQgPSAtRUlOVkFM
OwogCXUzMiBpLCBmbGFnczsKIAorCWlmIChoZWFkLT5mbGFncyAmIH5VRE1BQlVGX0ZMQUdTX0NM
T0VYRUMpCisJCXJldHVybiAtRUlOVkFMOworCiAJdWJ1ZiA9IGt6YWxsb2Moc2l6ZW9mKCp1YnVm
KSwgR0ZQX0tFUk5FTCk7CiAJaWYgKCF1YnVmKQogCQlyZXR1cm4gLUVOT01FTTsKLS0gCjIuMTgu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBz
Oi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

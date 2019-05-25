Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF1F32DDC
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Jun 2019 12:45:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9063C610D5
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Jun 2019 10:45:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 83AB2614F0; Mon,  3 Jun 2019 10:45:40 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 356396152C;
	Mon,  3 Jun 2019 10:43:20 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E0CB8608B5
 for <linaro-mm-sig@lists.linaro.org>; Sat, 25 May 2019 07:18:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C5E01608C3; Sat, 25 May 2019 07:18:50 +0000 (UTC)
Received: from mail3-166.sinamail.sina.com.cn (mail3-166.sinamail.sina.com.cn
 [202.108.3.166])
 by lists.linaro.org (Postfix) with SMTP id A7628608B5
 for <linaro-mm-sig@lists.linaro.org>; Sat, 25 May 2019 07:18:48 +0000 (UTC)
Received: from unknown (HELO localhost.localdomain)([114.253.229.186])
 by sina.com with ESMTP
 id 5CE8EC53000070E3; Sat, 25 May 2019 15:18:45 +0800 (CST)
X-Sender: hdanton@sina.com
X-Auth-ID: hdanton@sina.com
X-SMAIL-MID: 296193394075
From: Hillf Danton <hdanton@sina.com>
To: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Sat, 25 May 2019 15:18:37 +0800
Message-Id: <20190416183841.1577-7-christian.koenig@amd.com>
In-Reply-To: <20190416183841.1577-1-christian.koenig@amd.com>
References: <20190416183841.1577-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Precedence: bulk
X-Mailing-List: linux-kernel@vger.kernel.org
Archived-At: <https://lore.kernel.org/lkml/20190416183841.1577-7-christian.koenig@amd.com/>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Mon, 03 Jun 2019 10:43:16 +0000
Cc: linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 06/12] drm: remove prime sg_table caching
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
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

Ck9uIFR1ZSwgMTYgQXByIDIwMTkgMjA6Mzg6MzUgKzAyMDAgQ2hyaXN0aWFuIEvDtm5pZyB3cm90
ZToKPiBAIC0zMzEsMTQgKzI4MiwxOSBAQCBFWFBPUlRfU1lNQk9MKGRybV9nZW1fbWFwX2RtYV9i
dWYpOwo+ICAgKiBAc2d0OiBzY2F0dGVybGlzdCBpbmZvIG9mIHRoZSBidWZmZXIgdG8gdW5tYXAK
PiAgICogQGRpcjogZGlyZWN0aW9uIG9mIERNQSB0cmFuc2Zlcgo+ICAgKgo+IC0gKiBOb3QgaW1w
bGVtZW50ZWQuIFRoZSB1bm1hcCBpcyBkb25lIGF0IGRybV9nZW1fbWFwX2RldGFjaCgpLiAgVGhp
cyBjYW4gYmUKPiAtICogdXNlZCBhcyB0aGUgJmRtYV9idWZfb3BzLnVubWFwX2RtYV9idWYgY2Fs
bGJhY2suCj4gKyAqIFRoaXMgY2FuIGJlIHVzZWQgYXMgdGhlICZkbWFfYnVmX29wcy51bm1hcF9k
bWFfYnVmIGNhbGxiYWNrLgo+ICAgKi8KPiAgdm9pZCBkcm1fZ2VtX3VubWFwX2RtYV9idWYoc3Ry
dWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLAo+ICAJCQkgICBzdHJ1Y3Qgc2dfdGFibGUg
KnNndCwKPiAgCQkJICAgZW51bSBkbWFfZGF0YV9kaXJlY3Rpb24gZGlyKQo+ICB7Cj4gLQkvKiBu
b3RoaW5nIHRvIGJlIGRvbmUgaGVyZSAqLwo+ICsJaWYgKCFzZ3QpCgoJaWYgKFdBUk5fT04oIXNn
dCkpICAgPwo+ICsJCXJldHVybjsKPiArCj4gKwlkbWFfdW5tYXBfc2dfYXR0cnMoYXR0YWNoLT5k
ZXYsIHNndC0+c2dsLCBzZ3QtPm5lbnRzLCBkaXIsCj4gKwkJCSAgIERNQV9BVFRSX1NLSVBfQ1BV
X1NZTkMpOwo+ICsJc2dfZnJlZV90YWJsZShzZ3QpOwo+ICsJa2ZyZWUoc2d0KTsKPiAgfQo+ICBF
WFBPUlRfU1lNQk9MKGRybV9nZW1fdW5tYXBfZG1hX2J1Zik7Cj4gIAo+IC0tIAo+IDIuMTcuMQo+
IApCUgpIaWxsZgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1z
aWcK

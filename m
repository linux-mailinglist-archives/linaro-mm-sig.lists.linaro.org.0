Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 964441D4AA3
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 May 2020 12:14:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8496765F7F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 May 2020 10:14:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 763F865F95; Fri, 15 May 2020 10:14:46 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5EBBD65F7F;
	Fri, 15 May 2020 10:14:03 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5539965F7E
 for <linaro-mm-sig@lists.linaro.org>; Fri, 15 May 2020 10:13:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 31DB465F81; Fri, 15 May 2020 10:13:58 +0000 (UTC)
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by lists.linaro.org (Postfix) with ESMTPS id 8B0A365F80
 for <linaro-mm-sig@lists.linaro.org>; Fri, 15 May 2020 10:13:55 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-78-w3BMy0_SM1mEjilMgqtsgA-1; Fri, 15 May 2020 06:13:50 -0400
X-MC-Unique: w3BMy0_SM1mEjilMgqtsgA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DBF8A18FE863;
 Fri, 15 May 2020 10:13:48 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-115-145.ams2.redhat.com
 [10.36.115.145])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7A9535F72E;
 Fri, 15 May 2020 10:13:48 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 484C416E16; Fri, 15 May 2020 12:13:47 +0200 (CEST)
Date: Fri, 15 May 2020 12:13:47 +0200
From: Gerd Hoffmann <kraxel@redhat.com>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <20200515101347.sbdiriypovujohkm@sirius.home.kraxel.org>
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133318eucas1p1dd6c1ac6a777874c115070d8b5197f34@eucas1p1.samsung.com>
 <20200513133245.6408-30-m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513133245.6408-30-m.szyprowski@samsung.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 iommu@lists.linux-foundation.org, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH v5 30/38] dmabuf: fix common struct
 sg_table related issues
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

PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL3VkbWFidWYuYyBiL2RyaXZlcnMvZG1hLWJ1
Zi91ZG1hYnVmLmMKPiBpbmRleCBhY2IyNmM2Li44OWUyOTNiIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZG1hLWJ1Zi91ZG1hYnVmLmMKPiArKysgYi9kcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jCj4g
QEAgLTYzLDEwICs2Myw5IEBAIHN0YXRpYyBzdHJ1Y3Qgc2dfdGFibGUgKmdldF9zZ190YWJsZShz
dHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkbWFfYnVmICpidWYsCj4gIAkJCQkJR0ZQX0tFUk5F
TCk7Cj4gIAlpZiAocmV0IDwgMCkKPiAgCQlnb3RvIGVycjsKPiAtCWlmICghZG1hX21hcF9zZyhk
ZXYsIHNnLT5zZ2wsIHNnLT5uZW50cywgZGlyZWN0aW9uKSkgewo+IC0JCXJldCA9IC1FSU5WQUw7
Cj4gKwlyZXQgPSBkbWFfbWFwX3NndGFibGUoZGV2LCBzZywgZGlyZWN0aW9uLCAwKTsKPiArCWlm
IChyZXQgPCAwKQo+ICAJCWdvdG8gZXJyOwo+IC0JfQo+ICAJcmV0dXJuIHNnOwo+ICAKPiAgZXJy
Ogo+IEBAIC03OCw3ICs3Nyw3IEBAIHN0YXRpYyBzdHJ1Y3Qgc2dfdGFibGUgKmdldF9zZ190YWJs
ZShzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkbWFfYnVmICpidWYsCj4gIHN0YXRpYyB2b2lk
IHB1dF9zZ190YWJsZShzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBzZ190YWJsZSAqc2csCj4g
IAkJCSBlbnVtIGRtYV9kYXRhX2RpcmVjdGlvbiBkaXJlY3Rpb24pCj4gIHsKPiAtCWRtYV91bm1h
cF9zZyhkZXYsIHNnLT5zZ2wsIHNnLT5uZW50cywgZGlyZWN0aW9uKTsKPiArCWRtYV91bm1hcF9z
Z3RhYmxlKGRldiwgc2csIGRpcmVjdGlvbiwgMCk7Cj4gIAlzZ19mcmVlX3RhYmxlKHNnKTsKPiAg
CWtmcmVlKHNnKTsKPiAgfQoKRWFzeSBzdHJhaWdodGZvcndhcmQgY29udmVyc2F0aW9uLgoKQWNr
ZWQtYnk6IEdlcmQgSG9mZm1hbm4gPGtyYXhlbEByZWRoYXQuY29tPgoKdGFrZSBjYXJlLAogIEdl
cmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRw
czovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

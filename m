Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id EE3351509FB
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Feb 2020 16:41:45 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1BB48608D5
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Feb 2020 15:41:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 088826087E; Mon,  3 Feb 2020 15:41:45 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_LOW,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4257060870;
	Mon,  3 Feb 2020 15:41:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 919EF607AE
 for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Feb 2020 15:41:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 82AEC60870; Mon,  3 Feb 2020 15:41:14 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by lists.linaro.org (Postfix) with ESMTP id 81150607AE
 for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Feb 2020 15:41:13 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DC5E830E;
 Mon,  3 Feb 2020 07:41:12 -0800 (PST)
Received: from arm.com (e112269-lin.cambridge.arm.com [10.1.195.32])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3BA253F68E;
 Mon,  3 Feb 2020 07:41:11 -0800 (PST)
Date: Mon, 3 Feb 2020 15:41:06 +0000
From: Steven Price <steven.price@arm.com>
To: YueHaibing <yuehaibing@huawei.com>
Message-ID: <20200203154106.GA2114@arm.com>
References: <20200203152724.42611-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200203152724.42611-1-yuehaibing@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Rob Herring <robh@kernel.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 David Airlie <airlied@linux.ie>,
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
 Hulk Robot <hulkci@huawei.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH -next] drm/panfrost: Remove set but not
	used variable 'bo'
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

T24gTW9uLCBGZWIgMDMsIDIwMjAgYXQgMDM6Mjc6MjRQTSArMDAwMCwgWXVlSGFpYmluZyB3cm90
ZToKPiBGaXhlcyBnY2MgJy1XdW51c2VkLWJ1dC1zZXQtdmFyaWFibGUnIHdhcm5pbmc6Cj4gCj4g
ZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0L3BhbmZyb3N0X2pvYi5jOiBJbiBmdW5jdGlvbiAncGFu
ZnJvc3Rfam9iX2NsZWFudXAnOgo+IGRyaXZlcnMvZ3B1L2RybS9wYW5mcm9zdC9wYW5mcm9zdF9q
b2IuYzoyNzg6MzE6IHdhcm5pbmc6Cj4gIHZhcmlhYmxlICdibycgc2V0IGJ1dCBub3QgdXNlZCBb
LVd1bnVzZWQtYnV0LXNldC12YXJpYWJsZV0KPiAKPiBjb21taXQgYmRlZmNhMmQ4ZGMwICgiZHJt
L3BhbmZyb3N0OiBBZGQgdGhlIHBhbmZyb3N0X2dlbV9tYXBwaW5nIGNvbmNlcHQiKQo+IGludm9s
dmVkIHRoaXMgdW51c2VkIHZhcmlhYmxlLgo+IAo+IFJlcG9ydGVkLWJ5OiBIdWxrIFJvYm90IDxo
dWxrY2lAaHVhd2VpLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBZdWVIYWliaW5nIDx5dWVoYWliaW5n
QGh1YXdlaS5jb20+CgpJJ20gbm90IHN1cmUgaG93IEkgZGlkbid0IHNwb3QgdGhhdCBiZWZvcmUh
IFRoYW5rcyBmb3IgZml4aW5nIGl0LgoKTm90ZSBjb21taXQgYmRlZmNhMmQ4ZGMwIGlzIGFjdHVh
bGx5IGluIHY1LjUgYW5kIG5vdCAoeWV0KSBpbgpkcm0tbWlzYy1uZXh0LgoKUmV2aWV3ZWQtYnk6
IFN0ZXZlbiBQcmljZSA8c3RldmVuLnByaWNlQGFybS5jb20+Cgo+IC0tLQo+ICBkcml2ZXJzL2dw
dS9kcm0vcGFuZnJvc3QvcGFuZnJvc3Rfam9iLmMgfCA2ICstLS0tLQo+ICAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKyksIDUgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9wYW5mcm9zdC9wYW5mcm9zdF9qb2IuYyBiL2RyaXZlcnMvZ3B1L2RybS9wYW5m
cm9zdC9wYW5mcm9zdF9qb2IuYwo+IGluZGV4IDdjMzZlYzY3NWI3My4uY2NiODU0NmE5MzQyIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9wYW5mcm9zdC9wYW5mcm9zdF9qb2IuYwo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9wYW5mcm9zdC9wYW5mcm9zdF9qb2IuYwo+IEBAIC0yNzUsMTIg
KzI3NSw4IEBAIHN0YXRpYyB2b2lkIHBhbmZyb3N0X2pvYl9jbGVhbnVwKHN0cnVjdCBrcmVmICpy
ZWYpCj4gIAl9Cj4gIAo+ICAJaWYgKGpvYi0+Ym9zKSB7Cj4gLQkJc3RydWN0IHBhbmZyb3N0X2dl
bV9vYmplY3QgKmJvOwo+IC0KPiAtCQlmb3IgKGkgPSAwOyBpIDwgam9iLT5ib19jb3VudDsgaSsr
KSB7Cj4gLQkJCWJvID0gdG9fcGFuZnJvc3RfYm8oam9iLT5ib3NbaV0pOwo+ICsJCWZvciAoaSA9
IDA7IGkgPCBqb2ItPmJvX2NvdW50OyBpKyspCj4gIAkJCWRybV9nZW1fb2JqZWN0X3B1dF91bmxv
Y2tlZChqb2ItPmJvc1tpXSk7Cj4gLQkJfQo+ICAKPiAgCQlrdmZyZWUoam9iLT5ib3MpOwo+ICAJ
fQo+IAo+IAo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNp
Zwo=

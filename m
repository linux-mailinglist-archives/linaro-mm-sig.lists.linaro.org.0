Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E514032DDD
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Jun 2019 12:46:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 258836150E
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Jun 2019 10:46:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 19D9E6151D; Mon,  3 Jun 2019 10:46:08 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 83572615AD;
	Mon,  3 Jun 2019 10:43:20 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B4DC36068B
 for <linaro-mm-sig@lists.linaro.org>; Mon, 27 May 2019 14:22:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A810F607FB; Mon, 27 May 2019 14:22:06 +0000 (UTC)
Received: from mail3-165.sinamail.sina.com.cn (mail3-165.sinamail.sina.com.cn
 [202.108.3.165])
 by lists.linaro.org (Postfix) with SMTP id 1F8E16068B
 for <linaro-mm-sig@lists.linaro.org>; Mon, 27 May 2019 14:22:03 +0000 (UTC)
Received: from unknown (HELO localhost.localdomain)([123.112.52.157])
 by sina.com with ESMTP
 id 5CEBF283000016EA; Mon, 27 May 2019 22:21:57 +0800 (CST)
X-Sender: hdanton@sina.com
X-Auth-ID: hdanton@sina.com
X-SMAIL-MID: 281274399391
From: Hillf Danton <hdanton@sina.com>
To: christian.koenig@amd.com,
	ckoenig.leichtzumerken@gmail.com
Date: Mon, 27 May 2019 22:21:48 +0800
Message-Id: <20190527142148.14640-1-hdanton@sina.com>
MIME-Version: 1.0
Thread-Topic: Re: [PATCH 02/12] dma-buf: add dma_buf_(un)map_attachment_locked
 variants v3
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Mon, 03 Jun 2019 10:43:16 +0000
Cc: linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 02/12] dma-buf: add
	dma_buf_(un)map_attachment_locked variants v3
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

Ck9uIE1vbiwgMjcgTWF5IDIwMTkgMTg6NTY6MjAgKzA4MDAgQ2hyaXN0aWFuIEtvZW5pZyB3cm90
ZToKPiBUaGFua3MgZm9yIHRoZSBjb21tZW50cywgYnV0IHlvdSBhcmUgbG9va2luZyBhdCBhIGNv
bXBsZXRlbHkgb3V0ZGF0ZWQgcGF0Y2hzZXQuCj4gCj4gSWYgeW91IGFyZSBpbnRlcmVzdGVkIGlu
IHRoZSBuZXdlc3Qgb25lIHBsZWFzZSBwaW5nIG1lIGFuZCBJJ20gZ29pbmcgdG8gQ0MgeW91Cj4g
d2hlbiBJIHNlbmQgb3V0IHRoZSBuZXh0IHZlcnNpb24uCj4gClBpbmcuLi4KClRoYW5rcwpIaWxs
ZgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBz
Oi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DBA532DD9
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Jun 2019 12:45:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9E5406151B
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Jun 2019 10:45:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 932DB61613; Mon,  3 Jun 2019 10:45:14 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B41B261523;
	Mon,  3 Jun 2019 10:43:19 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B3DD46069A
 for <linaro-mm-sig@lists.linaro.org>; Sat, 25 May 2019 06:49:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 98B19607D4; Sat, 25 May 2019 06:49:08 +0000 (UTC)
Received: from mail7-214.sinamail.sina.com.cn (mail7-214.sinamail.sina.com.cn
 [202.108.7.214])
 by lists.linaro.org (Postfix) with SMTP id C21126069A
 for <linaro-mm-sig@lists.linaro.org>; Sat, 25 May 2019 06:49:06 +0000 (UTC)
Received: from unknown (HELO localhost.localdomain)([114.253.229.186])
 by sina.com with ESMTP
 id 5CE8E55C000058A8; Sat, 25 May 2019 14:49:03 +0800 (CST)
X-Sender: hdanton@sina.com
X-Auth-ID: hdanton@sina.com
X-SMAIL-MID: 910313394978
From: Hillf Danton <hdanton@sina.com>
To: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Sat, 25 May 2019 14:48:53 +0800
Message-Id: <20190416183841.1577-6-christian.koenig@amd.com>
In-Reply-To: <20190416183841.1577-1-christian.koenig@amd.com>
References: <20190416183841.1577-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Precedence: bulk
X-Mailing-List: linux-kernel@vger.kernel.org
Archived-At: <https://lore.kernel.org/lkml/20190416183841.1577-6-christian.koenig@amd.com/>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Mon, 03 Jun 2019 10:43:16 +0000
Cc: linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 05/12] dma-buf: add explicit buffer
	pinning
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

Ck9uIFR1ZSwgMTYgQXByIDIwMTkgMjA6Mzg6MzQgKzAyMDAgQ2hyaXN0aWFuIEvDtm5pZyB3cm90
ZToKPiArCS8qKgo+ICsJICogQHVucGluX2RtYV9idWY6Cj4gKwkgKgo+ICsJICogVGhpcyBpcyBj
YWxsZWQgYnkgZG1hX2J1Zl91bnBpbiBhbmQgbGV0cyB0aGUgZXhwb3J0ZXIga25vdyB0aGF0IGFu
Cj4gKwkgKiBpbXBvcnRlciBkb2Vzbid0IG5lZWQgdG8gdGhlIERNQS1idWYgdG8gc3RheSB3ZXJl
IGl0IGlzIGFueSBtb3JlLgo+ICsJICoKcy9uZWVkIHRvL25lZWQvICBzL3dlcmUvd2hlcmUvCgo+
ICsJICogVGhpcyBpcyBjYWxsZWQgd2l0aCB0aGUgZG1hYnVmLT5yZXN2IG9iamVjdCBsb2NrZWQu
Cj4gKwkgKgo+ICsJICogVGhpcyBjYWxsYmFjayBpcyBvcHRpb25hbC4KPiArCSAqLwo+ICsJdm9p
ZCAoKnVucGluKShzdHJ1Y3QgZG1hX2J1ZiAqKTsKPiArCkJSCkhpbGxmCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8u
b3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

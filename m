Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2756882102
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 Aug 2019 18:01:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 49AC560795
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 Aug 2019 16:01:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3EDC760BE0; Mon,  5 Aug 2019 16:01:28 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 474EB6099C;
	Mon,  5 Aug 2019 16:00:54 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A727B60956
 for <linaro-mm-sig@lists.linaro.org>; Mon,  5 Aug 2019 16:00:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9A6C360BE0; Mon,  5 Aug 2019 16:00:50 +0000 (UTC)
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by lists.linaro.org (Postfix) with ESMTPS id 5A6216099C
 for <linaro-mm-sig@lists.linaro.org>; Mon,  5 Aug 2019 15:59:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17894656-1500050 for multiple; Mon, 05 Aug 2019 16:58:58 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
References: <20190805154554.3476-1-christian.koenig@amd.com>
In-Reply-To: <20190805154554.3476-1-christian.koenig@amd.com>
Message-ID: <156502073694.28464.1595909334726483969@skylake-alporthouse-com>
Date: Mon, 05 Aug 2019 16:58:56 +0100
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 1/5] drm/i915: stop pruning reservation
	object after wait
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

UXVvdGluZyBDaHJpc3RpYW4gS8O2bmlnICgyMDE5LTA4LTA1IDE2OjQ1OjUwKQo+IFRoZSByZXNl
cnZhdGlvbiBvYmplY3Qgc2hvdWxkIGJlIGNhcGFibGUgb2YgaGFuZGxpbmcgaXRzIGludGVybmFs
IG1lbW9yeQo+IG1hbmFnZW1lbnQgaXRzZWxmLiBBbmQgc2luY2Ugd2Ugc2VhcmNoIGZvciBhIGZy
ZWUgc2xvdCB0byBhZGQgdGhlIGZlbmNlCj4gZnJvbSB0aGUgYmVnaW5uaW5nIHRoaXMgaXMgYWN0
dWFsbHkgYSB3YXN0ZSBvZiB0aW1lIGFuZCBvbmx5IG1pbmltYWwgaGVscGZ1bC4KCiJGcm9tIHRo
ZSBiZWdpbm5pbmc/IiBBdHRlbXB0aW5nIHRvIHBydW5lIHNpZ25hbGVkIGZlbmNlcyBvbiBpbnNl
cnRpb24gaXMKcXVpdGUgcmVjZW50LgoKSG93ZXZlciwgdGhhdCBkb2Vzbid0IGhlbHAgdGhlIGNh
c2VzIHdoZXJlIHJlc2VydmF0aW9uX29iamVjdCBrZWVwcyBvbgpob2xkaW5nIGEgcmVmZXJlbmNl
IHRvIHRoZSBmZW5jZXMgZm9yIGlkbGUgb2JqZWN0cy4gSXQncyBhbiBhYnNvbHV0ZQpuaWdodG1h
cmUgb2YgYSByZWZlcmVuY2UgdHJhcC4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW5hcm8tbW0tc2lnCg==

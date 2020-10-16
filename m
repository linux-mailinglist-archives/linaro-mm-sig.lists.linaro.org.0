Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 091CF290971
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 16 Oct 2020 18:13:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9D12066519
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 16 Oct 2020 16:13:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 912FD66524; Fri, 16 Oct 2020 16:13:44 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9E443664F0;
	Fri, 16 Oct 2020 16:13:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3106261816
 for <linaro-mm-sig@lists.linaro.org>; Fri, 16 Oct 2020 16:13:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1C73F664F0; Fri, 16 Oct 2020 16:13:14 +0000 (UTC)
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by lists.linaro.org (Postfix) with ESMTPS id 1E01C61816
 for <linaro-mm-sig@lists.linaro.org>; Fri, 16 Oct 2020 16:13:13 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id 67so4482547iob.8
 for <linaro-mm-sig@lists.linaro.org>; Fri, 16 Oct 2020 09:13:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=HoVWWsnJtF4ldfrPYdqvQFOpOJVhRuHffI82nRexcX8=;
 b=c3k9erg/ezReH1dr+aCxLM8YN0J8mHb5Xuvhh7rCDbACvMuTAS+IyA0E1df/hiwsC2
 WD6F1CixiYXPgR6Wd4Avw9bVPNknfdjeDxRpQOw7ljs+487zXTny1eCmrnBDiB33la4Z
 I6VUwaek90hUGDL3uQO/1m9NOg0VtuZshYe6ECTmmjVmx6hpeHfLsnN9aZOwqJ8f6I4a
 RZBEya98sqHqKPDWOyZjymrhxHrhXhGGGV//rdlIXkpjacupuMubhxty2PMmIEWQwGkn
 3GEiVUzYly7gNUgYcvAsAloa96OojR++uqqZVuGB7cc5yYoa7YB5afuyeZA+c8zOMWTa
 T3NQ==
X-Gm-Message-State: AOAM530N5muo1+LMQMGUfKQZmxDWnbcdIz2/6d5/eyThMS1kvn9sQImM
 +yr9RRiZKDy2FImvKVovT08+mA==
X-Google-Smtp-Source: ABdhPJwNXo7iyWJ77FT+/0CMo9tudCck82Xc2qlsaYhuPEdloUxNeSLOdR9y5ZI15zE7xNsqmPrhXQ==
X-Received: by 2002:a6b:b413:: with SMTP id d19mr3054559iof.10.1602864792525; 
 Fri, 16 Oct 2020 09:13:12 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-48-30.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.48.30])
 by smtp.gmail.com with ESMTPSA id m66sm2702327ill.69.2020.10.16.09.13.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Oct 2020 09:13:11 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1kTSLu-000ecw-Lj; Fri, 16 Oct 2020 13:13:10 -0300
Date: Fri, 16 Oct 2020 13:13:10 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christian =?utf-8?B?S8O2bmln?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <20201016161310.GE36674@ziepe.ca>
References: <20201012085203.56119-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201012085203.56119-1-christian.koenig@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linmiaohe@huawei.com, jhubbard@nvidia.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-mm@kvack.org, willy@infradead.org, daniel@ffwll.ch, airlied@redhat.com,
 akpm@linux-foundation.org, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] mm: mmap: fix fput in error path v2
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

T24gTW9uLCBPY3QgMTIsIDIwMjAgYXQgMTA6NTI6MDJBTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiBQYXRjaCAiNDk1YzEwY2MxYzBjIENIUk9NSVVNOiBkbWEtYnVmOiByZXN0b3Jl
IGFyZ3MuLi4iCj4gYWRkcyBhIHdvcmthcm91bmQgZm9yIGEgYnVnIGluIG1tYXBfcmVnaW9uLgo+
IAo+IEFzIHRoZSBjb21tZW50IHN0YXRlcyAtPm1tYXAoKSBjYWxsYmFjayBjYW4gY2hhbmdlCj4g
dm1hLT52bV9maWxlIGFuZCBzbyB3ZSBtaWdodCBjYWxsIGZwdXQoKSBvbiB0aGUgd3JvbmcgZmls
ZS4KPiAKPiBSZXZlcnQgdGhlIHdvcmthcm91bmQgYW5kIHByb3BlciBmaXggdGhpcyBpbiBtbWFw
X3JlZ2lvbi4KPiAKPiB2MjogZHJvcCB0aGUgZXh0cmEgaWYgaW4gZG1hX2J1Zl9tbWFwIGFzIHdl
bGwKPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+Cj4gUmV2aWV3ZWQtYnk6IEphc29uIEd1bnRob3JwZSA8amdnQG52aWRpYS5jb20+
Cj4gLS0tCj4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgfCAyMCArKystLS0tLS0tLS0tLS0t
LS0tLQo+ICBtbS9tbWFwLmMgICAgICAgICAgICAgICAgIHwgIDIgKy0KPiAgMiBmaWxlcyBjaGFu
Z2VkLCA0IGluc2VydGlvbnMoKyksIDE4IGRlbGV0aW9ucygtKQoKUmV2aWV3ZWQtYnk6IEphc29u
IEd1bnRob3JwZSA8amdnQG52aWRpYS5jb20+CgpQcm9iYWJseSBzaG91bGQgRml4ZXMgdGhhdCBv
dGhlciBwYXRjaCBBbmRyZXcgcG9pbnRlZCBhdAoKSmFzb24KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

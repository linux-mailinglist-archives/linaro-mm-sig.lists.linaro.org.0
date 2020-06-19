Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D7C8D219F8F
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 14:03:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 001E766572
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 12:03:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id DC3DD665A5; Thu,  9 Jul 2020 12:03:22 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 93370666F5;
	Thu,  9 Jul 2020 11:34:29 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6A6F560733
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 17:23:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5B72E665A1; Fri, 19 Jun 2020 17:23:12 +0000 (UTC)
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by lists.linaro.org (Postfix) with ESMTPS id F2CA060733
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 17:23:09 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id w1so9663666qkw.5
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:23:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=rta7XgSy0ckbOhf+G5R08zHN2raoo0kZf2xw2Sh0l/k=;
 b=GONIvRUEVhdbbNU+ABLWMyPuUXkLYODEhEx6bY1+iT6ZoLb3mgZAKwC9RyFdUNsvE0
 N5yr/DGjPNq2oOdZpd9cA4K6nP5XHbk98PCYmHvQzAh69aedrbjmjJDIP25E9lE0jwsA
 zfC+DUqJVS8xQubUhwmQ2l4z219Gar8No9gabXK+XjLeDItL7diNDxENWdzrRK8so9nh
 hLa2x6jw4cZPK/pJTFkhlHz6WUxqDrbttrpgho2Hg1eSb3dGdixqqRNWyZ3fTCWGjghD
 rbq804X8kIPOxmKpzzYEAPyHS2EreulxEvkCcwmXtT9nSbI9a4PVc8PpuiVz0sGntQT1
 yxfQ==
X-Gm-Message-State: AOAM530lLR16smiV8V3kLIK03eUNDES7VB85Z4aekfpKe2xSVFyP5HmM
 3jI0rfDOWOPCuYpZ+w+G6Wx8wg==
X-Google-Smtp-Source: ABdhPJzDMW9WT5FfWlenUCjhHpgpjiA2TJ2PiIGS5w9RkI8RANL7HnmArRn+HLKwhDBh+PaKr6DrLw==
X-Received: by 2002:ae9:ed0d:: with SMTP id c13mr4076677qkg.181.1592587389664; 
 Fri, 19 Jun 2020 10:23:09 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-48-30.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.48.30])
 by smtp.gmail.com with ESMTPSA id z77sm7263705qka.59.2020.06.19.10.23.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 10:23:08 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.93) (envelope-from <jgg@ziepe.ca>)
 id 1jmKjM-00ArZ4-2Z; Fri, 19 Jun 2020 14:23:08 -0300
Date: Fri, 19 Jun 2020 14:23:08 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Daniel Vetter <daniel@ffwll.ch>
Message-ID: <20200619172308.GQ6578@ziepe.ca>
References: <20200616120719.GL20149@phenom.ffwll.local>
 <CAKMK7uE7DKUo9Z+yCpY+mW5gmKet8ugbF3yZNyHGqsJ=e-g_hA@mail.gmail.com>
 <20200617152835.GF6578@ziepe.ca>
 <20200618150051.GS20149@phenom.ffwll.local>
 <20200618172338.GM6578@ziepe.ca>
 <CAKMK7uEbqTu4q-amkLXyd1i8KNtLaoO2ZFoGqYiG6D0m0FKpOg@mail.gmail.com>
 <20200619113934.GN6578@ziepe.ca>
 <CAKMK7uE-kWA==Cko5uenMrcnopEjq42HxoDTDywzBAbHqsN13g@mail.gmail.com>
 <20200619151551.GP6578@ziepe.ca>
 <CAKMK7uEvkshAM6KUYZu8_OCpF4+1Y_SM7cQ9nJWpagfke8s8LA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKMK7uEvkshAM6KUYZu8_OCpF4+1Y_SM7cQ9nJWpagfke8s8LA@mail.gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Thu, 09 Jul 2020 11:34:07 +0000
Cc: linux-rdma <linux-rdma@vger.kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 04/18] dma-fence: prime lockdep
 annotations
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

T24gRnJpLCBKdW4gMTksIDIwMjAgYXQgMDY6MTk6NDFQTSArMDIwMCwgRGFuaWVsIFZldHRlciB3
cm90ZToKCj4gVGhlIG1hZG5lc3MgaXMgb25seSB0aGF0IGRldmljZSBCJ3MgbW11IG5vdGlmaWVy
IG1pZ2h0IG5lZWQgdG8gd2FpdAo+IGZvciBmZW5jZV9CIHNvIHRoYXQgdGhlIGRtYSBvcGVyYXRp
b24gZmluaXNoZXMuIFdoaWNoIGluIHR1cm4gaGFzIHRvCj4gd2FpdCBmb3IgZGV2aWNlIEEgdG8g
ZmluaXNoIGZpcnN0LgoKU28sIGl0IHNvdW5kLCBmdW5kYW1lbnRhbGx5IHlvdSd2ZSBnb3QgdGhp
cyBncmFwaCBvZiBvcGVyYXRpb25zIGFjcm9zcwphbiB1bmtub3duIHNldCBvZiBkcml2ZXJzIGFu
ZCB0aGUga2VybmVsIGNhbm5vdCBpbnNlcnQgaXRzZWxmIGluCmRtYV9mZW5jZSBoYW5kIG9mZnMg
dG8gcmUtdmFsaWRhdGUgYW55IG9mIHRoZSBidWZmZXJzIGludm9sdmVkPwpCdWZmZXJzIHdoaWNo
IGJ5IGRlZmluaXRpb24gY2Fubm90IGJlIHRvdWNoZWQgYnkgdGhlIGhhcmR3YXJlIHlldC4KClRo
YXQgcmVhbGx5IGlzIGEgcHJldHR5IGhvcnJpYmxlIHBsYWNlIHRvIGVuZCB1cC4uCgpQaW5uaW5n
IHJlYWxseSBpcyByaWdodCBhbnN3ZXIgZm9yIHRoaXMga2luZCBvZiB3b3JrIGZsb3cuIEkgdGhp
bmsKY29udmVydGluZyBwaW5uaW5nIHRvIG5vdGlmZXJzIHNob3VsZCBub3QgYmUgZG9uZSB1bmxl
c3Mgbm90aWZpZXIKaW52YWxpZGF0aW9uIGlzIHJlbGF0aXZlbHkgYm91bmRlZC4gCgpJIGtub3cg
cGVvcGxlIGxpa2Ugbm90aWZpZXJzIGJlY2F1c2UgdGhleSBnaXZlIGEgYml0IG5pY2VyIHBlcmZv
cm1hbmNlCmluIHNvbWUgaGFwcHkgY2FzZXMsIGJ1dCB0aGlzIGNyaXBwbGVzIGFsbCB0aGUgYmFk
IGNhc2VzLi4KCklmIHBpbm5pbmcgZG9lc24ndCB3b3JrIGZvciBzb21lIHJlYXNvbiBtYXliZSB3
ZSBzaG91bGQgYWRkcmVzcyB0aGF0PwoKPiBGdWxsIGRpc2Nsb3N1cmU6IFdlIGFyZSBhd2FyZSB0
aGF0IHdlJ3ZlIGRlc2lnbmVkIG91cnNlbHZlcyBpbnRvIGFuCj4gaW1wcmVzc2l2ZSBjb3JuZXIg
aGVyZSwgYW5kIHRoZXJlJ3MgbG90cyBvZiB0YWxrcyBnb2luZyBvbiBhYm91dAo+IHVudGFuZ2xp
bmcgdGhlIGRtYSBzeW5jaHJvbml6YXRpb24gZnJvbSB0aGUgbWVtb3J5IG1hbmFnZW1lbnQKPiBj
b21wbGV0ZWx5LiBCdXQKCkkgdGhpbmsgdGhlIGRvY3VtZW50aW5nIGlzIHJlYWxseSBpbXBvcnRh
bnQ6IG9ubHkgR1BVIHNob3VsZCBiZSB1c2luZwp0aGlzIHN0dWZmIGFuZCBkcml2aW5nIG5vdGlm
aWVycyB0aGlzIHdheS4gQ29tcGxldGUgTk8gZm9yIGFueQp0b3RhbGx5LW5vdC1hLUdQVSB0aGlu
Z3MgaW4gZHJpdmVycy9hY2NlbCBmb3Igc3VyZS4KCkphc29uCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0Ckxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

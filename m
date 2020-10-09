Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A646288C55
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 Oct 2020 17:15:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D412C61081
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 Oct 2020 15:15:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C6D81664DF; Fri,  9 Oct 2020 15:15:01 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2186F6606C;
	Fri,  9 Oct 2020 15:14:26 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D7D3E61081
 for <linaro-mm-sig@lists.linaro.org>; Fri,  9 Oct 2020 15:14:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C52BB60F40; Fri,  9 Oct 2020 15:14:21 +0000 (UTC)
Received: from mail-qv1-f65.google.com (mail-qv1-f65.google.com
 [209.85.219.65])
 by lists.linaro.org (Postfix) with ESMTPS id 2346360F40
 for <linaro-mm-sig@lists.linaro.org>; Fri,  9 Oct 2020 15:14:20 +0000 (UTC)
Received: by mail-qv1-f65.google.com with SMTP id b19so4911615qvm.6
 for <linaro-mm-sig@lists.linaro.org>; Fri, 09 Oct 2020 08:14:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=d5tRJ9PpcVIuucKEk9PjSNEdnKeyXjPzYCqe74ejgpM=;
 b=TWa9JatT6tEAnelY2uwFrvkeAIYLKLgIV+9HlY6my4zA6UHeM8a5wlMbsG8a2Z2BoL
 cyQnSiW8Fai9NptrkO0iyLc8b9rghmNI0F16gxvU91V4QA1IzhWsPkzYKHh6KmeyTOlu
 7vFoLYowXrrt3O+8F7yjPQ4siZocqDvFP0whA5BWQCy1sn0LbG+Avf51IQqEM2PkVZp+
 KpIb8JxnIW5+wDIMkMC2/ECKzaPm2M4Czr4AUDftK0AFuhTUW9j7QPmr7M0BtSkM3fvy
 FcJvcrgWAUbQ9mkUeZOsAUVetqg6k/+0PcaHNR8eIy1FuBH7d6Vf51ciAEgEQz5qOR3L
 trVA==
X-Gm-Message-State: AOAM530iSoWn07LBxvx+SOyW0tMMSxf89ijG0PDVNfpV2VI1CgD1L04q
 pEYi9/JjWoJY04G9E6Vk/XUdXg==
X-Google-Smtp-Source: ABdhPJxKiahJdvTtsQaQo417yOupHNeidai5L3YpYKdnVDmVTqBZN9rm1cv4o5Miumg1ehkWBKEPgQ==
X-Received: by 2002:a0c:cd0e:: with SMTP id b14mr13194813qvm.3.1602256459739; 
 Fri, 09 Oct 2020 08:14:19 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-48-30.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.48.30])
 by smtp.gmail.com with ESMTPSA id s15sm6329516qkj.21.2020.10.09.08.14.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 09 Oct 2020 08:14:19 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1kQu66-0020X4-DL; Fri, 09 Oct 2020 12:14:18 -0300
Date: Fri, 9 Oct 2020 12:14:18 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christian =?utf-8?B?S8O2bmln?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <20201009151418.GW5177@ziepe.ca>
References: <20201009150342.1979-1-christian.koenig@amd.com>
 <20201009150342.1979-2-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201009150342.1979-2-christian.koenig@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: jhubbard@nvidia.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-mm@kvack.org, willy@infradead.org, daniel@ffwll.ch, airlied@redhat.com,
 akpm@linux-foundation.org, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 2/6] mm: introduce vma_set_file function
	v3
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

T24gRnJpLCBPY3QgMDksIDIwMjAgYXQgMDU6MDM6MzhQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiArLyoKPiArICogQ2hhbmdlIGJhY2tpbmcgZmlsZSwgb25seSB2YWxpZCB0byB1
c2UgZHVyaW5nIGluaXRpYWwgVk1BIHNldHVwLgo+ICsgKi8KPiArdm9pZCB2bWFfc2V0X2ZpbGUo
c3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEsIHN0cnVjdCBmaWxlICpmaWxlKQo+ICt7Cj4gKwlp
ZiAoZmlsZSkKPiArCSAgICAgICAgZ2V0X2ZpbGUoZmlsZSk7Cj4gKwo+ICsJc3dhcCh2bWEtPnZt
X2ZpbGUsIGZpbGUpOwo+ICsKPiArCWlmIChmaWxlKQo+ICsJCWZwdXQoZmlsZSk7Cj4gK30KCmZw
dXQgY3Jhc2hlcyB3aGVuIGZpbGUgaXMgTlVMTCBzbyB0aGUgZXJyb3IgaGFuZGxpbmcgYWZ0ZXIK
dW5tYXBfYW5kX2ZyZWVfdm1hOiBjYW4ndCBoYW5kbGUgdGhpcyBjYXNlLCBzaW1pbGFybHkgdm1f
ZmlsZSBjYW4ndCBiZQpOVUxMIGVpdGhlci4KClNvIGp1c3Qgc2ltcGx5OgoKIHN3YXAodm1hLT52
bV9maWxlLCBmaWxlKTsKIGdldF9maWxlKHZtYS0+dm1fZmlsZSk7CiBmcHV0KGZpbGUpOwogCldp
bGwgZG8/CgpKdXN0IGxldCBpdCBjcmFzaCBpZiBhbnkgb2YgdGhlbSBhcmUgd3JvbmdseSBOVUxM
LgoKSmFzb24KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
Cmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

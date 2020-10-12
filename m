Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DDE028AFB7
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Oct 2020 10:12:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 34E3760911
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Oct 2020 08:12:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1AD3766519; Mon, 12 Oct 2020 08:12:10 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4414960EBF;
	Mon, 12 Oct 2020 08:11:39 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7273860911
 for <linaro-mm-sig@lists.linaro.org>; Mon, 12 Oct 2020 08:11:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5DA0260EBF; Mon, 12 Oct 2020 08:11:36 +0000 (UTC)
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com
 [209.85.218.66])
 by lists.linaro.org (Postfix) with ESMTPS id 4778760911
 for <linaro-mm-sig@lists.linaro.org>; Mon, 12 Oct 2020 08:11:34 +0000 (UTC)
Received: by mail-ej1-f66.google.com with SMTP id p15so21932413ejm.7
 for <linaro-mm-sig@lists.linaro.org>; Mon, 12 Oct 2020 01:11:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=M1NhPSK8WcpTtZeyW8ggYwirkBLqPyAO/qcKCJS3Ci0=;
 b=mFplueQytK2dP5XgDEYy32fOcYki2S2l6rm9PhzL6oxKvGgKK41YNfn9wHV2dwEqUf
 WsO7PWVmOGcWkguYOfM4FWb0gzvEH0geANGVQOlvxzzSniExClnK1h8rmAD38svtkUeC
 Fx4B37Un5t896PGkPqfk+mzq08Y6TKd0c24EnaDVfjtPGgM0qu3+pZkKT7kiLfqVbzQG
 +3+8RDS/gTAnY/7FqO+hltURGXvv77PyaBOOuWVLcYgPM0QNG/2MJkWqCJV9Qn5UYkNb
 J0PAGvzfWOUVhTnWMYqpJXPI4JPJi5cLYPa2WXqTsDFiv8ftd29s1nUr81wYJyGGAVcf
 aveA==
X-Gm-Message-State: AOAM532V3c981d8+aaYcY2sL5apIjBtMNyJo7cSLQaMDculaHaBkbZJf
 uUjeEaG0bmxbbrsuFjdtUlU=
X-Google-Smtp-Source: ABdhPJweeE2yP6VxtQZod6lD2VKbJ5vhzDztVRMAHk7/HnG5S/RU3E8nwHmSCPtcnJZtER6cRV0qzw==
X-Received: by 2002:a17:906:53d7:: with SMTP id
 p23mr26383911ejo.232.1602490293318; 
 Mon, 12 Oct 2020 01:11:33 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id j18sm10177649ejc.111.2020.10.12.01.11.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 12 Oct 2020 01:11:32 -0700 (PDT)
To: Jason Gunthorpe <jgg@ziepe.ca>
References: <20201009150342.1979-1-christian.koenig@amd.com>
 <20201009150342.1979-2-christian.koenig@amd.com>
 <20201009151418.GW5177@ziepe.ca>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <9592e3da-a105-b0ec-3fb2-be349c464c2c@gmail.com>
Date: Mon, 12 Oct 2020 10:11:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201009151418.GW5177@ziepe.ca>
Content-Language: en-US
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
Reply-To: christian.koenig@amd.com
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMDkuMTAuMjAgdW0gMTc6MTQgc2NocmllYiBKYXNvbiBHdW50aG9ycGU6Cj4gT24gRnJpLCBP
Y3QgMDksIDIwMjAgYXQgMDU6MDM6MzhQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToK
Pj4gKy8qCj4+ICsgKiBDaGFuZ2UgYmFja2luZyBmaWxlLCBvbmx5IHZhbGlkIHRvIHVzZSBkdXJp
bmcgaW5pdGlhbCBWTUEgc2V0dXAuCj4+ICsgKi8KPj4gK3ZvaWQgdm1hX3NldF9maWxlKHN0cnVj
dCB2bV9hcmVhX3N0cnVjdCAqdm1hLCBzdHJ1Y3QgZmlsZSAqZmlsZSkKPj4gK3sKPj4gKwlpZiAo
ZmlsZSkKPj4gKwkgICAgICAgIGdldF9maWxlKGZpbGUpOwo+PiArCj4+ICsJc3dhcCh2bWEtPnZt
X2ZpbGUsIGZpbGUpOwo+PiArCj4+ICsJaWYgKGZpbGUpCj4+ICsJCWZwdXQoZmlsZSk7Cj4+ICt9
Cj4gZnB1dCBjcmFzaGVzIHdoZW4gZmlsZSBpcyBOVUxMIHNvIHRoZSBlcnJvciBoYW5kbGluZyBh
ZnRlcgo+IHVubWFwX2FuZF9mcmVlX3ZtYTogY2FuJ3QgaGFuZGxlIHRoaXMgY2FzZSwgc2ltaWxh
cmx5IHZtX2ZpbGUgY2FuJ3QgYmUKPiBOVUxMIGVpdGhlci4KPgo+IFNvIGp1c3Qgc2ltcGx5Ogo+
Cj4gICBzd2FwKHZtYS0+dm1fZmlsZSwgZmlsZSk7Cj4gICBnZXRfZmlsZSh2bWEtPnZtX2ZpbGUp
Owo+ICAgZnB1dChmaWxlKTsKPiAgIAo+IFdpbGwgZG8/CgpJIHdhcyBjb25zaWRlcmluZyB0aGlz
IGFzIHdlbGwsIHllcy4KCj4gSnVzdCBsZXQgaXQgY3Jhc2ggaWYgYW55IG9mIHRoZW0gYXJlIHdy
b25nbHkgTlVMTC4KCk1obSwgY2hhbmdpbmcgZnJvbSBhbm9ueW1vdXMgdG8gZmlsZSBiYWNrZWQg
b3IgcmV2ZXJzZSBpcyBwcm9iYWJseSBub3QgCnN1Y2ggYSBnb29kIGlkZWEuCgpTbyB5ZXMgY2F0
Y2hpbmcgdGhvc2UgcHJvYmxlbXMgZWFybHkgaXMgcHJvYmFibHkgdGhlIGJlc3QgYXBwcm9hY2gg
d2UgCmNvdWxkIGRvLgoKR29pbmcgdG8gZG8gdGhpcyBpbiB2NCBpZiBub2JvZHkgb2JqZWN0cy4K
ClJlZ2FyZHMsCkNocmlzdGlhbi4KCj4KPiBKYXNvbgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

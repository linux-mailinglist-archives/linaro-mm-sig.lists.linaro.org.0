Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A204524055C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Aug 2020 13:26:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5815F60628
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Aug 2020 11:26:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 47D756188F; Mon, 10 Aug 2020 11:26:14 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 68816617D8;
	Mon, 10 Aug 2020 11:25:48 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 215D460628
 for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Aug 2020 11:25:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 068BF617D8; Mon, 10 Aug 2020 11:25:46 +0000 (UTC)
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by lists.linaro.org (Postfix) with ESMTPS id 1FBFD60628
 for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Aug 2020 11:25:45 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id r4so7788099wrx.9
 for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Aug 2020 04:25:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=oTg2lxBtHTJ9GHQqs1UPfQnOTLFgVN0t8PhdBgnUOZo=;
 b=aesdlxcM6TX/B1GXKnQYRmbe6XLuY+XLDyQ4+gweRw5dGGR9dwVnGsLmInoTyIuO5B
 zXGhJQ6HdMin5cVWU9lPEJjZzJdB+/aIKYPcG4IfzgnpKRxcSZcEyktpuwMTH1iPBDEm
 zH/5wW0Ox1GTpXkHB90k/oyjlqqm7grR0EqH9s2545da8qabU8Gl9zzBIWdm15Sla60N
 TEaTtRE7jXCoKkqRj29eU6Pd8YZDe8R2Bb4Wo8FEszIEGt26y7/7CXx1gqti+y1Qlbfh
 M8tYySV6iNxaIiuBSs3yVd0E3cn9w9YaB9xwl9MLJoKHvWWmHVSJDRX9faZu4ugGSilC
 HITQ==
X-Gm-Message-State: AOAM532g/hq0jNtTXeLkgFnqtsk1hgObCMo6X70qpGVzunhiEDxISRhg
 MtCr4D1hz38org3AYMS/ing=
X-Google-Smtp-Source: ABdhPJwu7ulsQB2sIxkwOEtiTddoyOl0dMfmiZCjLvbUiY7InajwnIBXsggut18F6II9XAC3RPytGQ==
X-Received: by 2002:a5d:6381:: with SMTP id p1mr23634015wru.112.1597058744166; 
 Mon, 10 Aug 2020 04:25:44 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id h11sm18407755wrb.68.2020.08.10.04.25.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 10 Aug 2020 04:25:43 -0700 (PDT)
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
References: <20200809061739.16803-1-lukas.bulwahn@gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <7d434810-79bd-89a3-18f8-c5c2a2524822@gmail.com>
Date: Mon, 10 Aug 2020 13:25:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200809061739.16803-1-lukas.bulwahn@gmail.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Jonathan Corbet <corbet@lwn.net>, linux-rdma@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf.rst: repair length of title
	underline
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

QW0gMDkuMDguMjAgdW0gMDg6MTcgc2NocmllYiBMdWthcyBCdWx3YWhuOgo+IFdpdGggY29tbWl0
IDcyYjZlZGU3MzYyMyAoImRtYS1idWYucnN0OiBEb2N1bWVudCB3aHkgaW5kZWZpbml0ZSBmZW5j
ZXMgYXJlCj4gYSBiYWQgaWRlYSIpLCBkb2N1bWVudCBnZW5lcmF0aW9uIHdhcm5zOgo+Cj4gICAg
RG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL2RtYS1idWYucnN0OjE4MjogXAo+ICAgIFdBUk5JTkc6
IFRpdGxlIHVuZGVybGluZSB0b28gc2hvcnQuCj4KPiBSZXBhaXIgbGVuZ3RoIG9mIHRpdGxlIHVu
ZGVybGluZSB0byByZW1vdmUgd2FybmluZy4KPgo+IEZpeGVzOiA3MmI2ZWRlNzM2MjMgKCJkbWEt
YnVmLnJzdDogRG9jdW1lbnQgd2h5IGluZGVmaW5pdGUgZmVuY2VzIGFyZSBhIGJhZCBpZGVhIikK
PiBTaWduZWQtb2ZmLWJ5OiBMdWthcyBCdWx3YWhuIDxsdWthcy5idWx3YWhuQGdtYWlsLmNvbT4K
CkFja2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+CgpT
aG91bGQgSSBwaWNrIGl0IHVwIGludG8gZHJtLW1pc2MtbmV4dD8KCj4gLS0tCj4gRGFuaWVsLCBw
bGVhc2UgcGljayB0aGlzIG1pbm9yIG5vbi11cmdlbnQgZml4IHRvIHlvdXIgbmV3IGRvY3VtZW50
YXRpb24uCj4KPiAgIERvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9kbWEtYnVmLnJzdCB8IDIgKy0K
PiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlm
ZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9kbWEtYnVmLnJzdCBiL0RvY3VtZW50
YXRpb24vZHJpdmVyLWFwaS9kbWEtYnVmLnJzdAo+IGluZGV4IDEwMGJmZDIyNzI2NS4uMTNlYTBj
YzBhM2ZhIDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9kbWEtYnVmLnJz
dAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9kbWEtYnVmLnJzdAo+IEBAIC0xNzks
NyArMTc5LDcgQEAgRE1BIEZlbmNlIHVBQkkvU3luYyBGaWxlCj4gICAgICA6aW50ZXJuYWw6Cj4g
ICAKPiAgIEluZGVmaW5pdGUgRE1BIEZlbmNlcwo+IC1+fn5+fn5+fn5+fn5+fn5+fn5+fgo+ICt+
fn5+fn5+fn5+fn5+fn5+fn5+fn4KPiAgIAo+ICAgQXQgdmFyaW91cyB0aW1lcyAmZG1hX2ZlbmNl
IHdpdGggYW4gaW5kZWZpbml0ZSB0aW1lIHVudGlsIGRtYV9mZW5jZV93YWl0KCkKPiAgIGZpbmlz
aGVzIGhhdmUgYmVlbiBwcm9wb3NlZC4gRXhhbXBsZXMgaW5jbHVkZToKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

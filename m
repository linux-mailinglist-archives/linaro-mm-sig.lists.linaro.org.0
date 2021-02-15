Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1361031BB75
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Feb 2021 15:55:18 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3CC366038C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Feb 2021 14:55:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 31130619C1; Mon, 15 Feb 2021 14:55:17 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.0 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_HI,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7DFDB617CF;
	Mon, 15 Feb 2021 14:54:50 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id F404D6038C
 for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Feb 2021 14:54:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E66F0617CF; Mon, 15 Feb 2021 14:54:46 +0000 (UTC)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com
 [209.85.218.46])
 by lists.linaro.org (Postfix) with ESMTPS id 81E886038C
 for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Feb 2021 14:54:45 +0000 (UTC)
Received: by mail-ej1-f46.google.com with SMTP id y26so11510021eju.13
 for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Feb 2021 06:54:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=vVdEfWSlmLCjTZzZsqvvIxgWNNo8H9xjhu0/9T9YVpU=;
 b=tQ0uOAn5rIwM8JpAcpH5KW8QIJOzdQnkkdNhFNeIYnrEY+kltjO0JTQwtNQGASh3On
 K3l6raH7VJkgKo10T7Gh4cMN/bv3dZDv0nQmg5lWoCUfT/NqZ3E2n42XBFETLLyInEXL
 fVrNGXnABYcVoxxgAB52x6/zra78x69s5xzV3UC6KOdtNEfFlqSK3pkpoBmaH7tTbIuY
 wzobTgKMKUhayAWPZLF7xz5g1EeXScL7Be9GtIJozg2QIVdGpEng7avskk7eKEJUafSb
 L5x34jSosvnrmItMdwvTkOvyWy3J2k2nVOL8/mm2n0R+OP+VgH/XEX6eU5U+CulQHIAm
 3m5g==
X-Gm-Message-State: AOAM533KcOxCn6NhWbY8MvZNlhuU3OvXtTSThp6D1R9gFlJwnlJ2VEec
 NfI8pZHteVBCv4G+CA+/wrk=
X-Google-Smtp-Source: ABdhPJyKyQ+rcI1yMgx5DeqIr7yds4RFmEThUICE4kKcuA/yo4/N31AymywJRuTF1ELr74NJdEQU1w==
X-Received: by 2002:a17:906:3412:: with SMTP id
 c18mr2583106ejb.146.1613400884593; 
 Mon, 15 Feb 2021 06:54:44 -0800 (PST)
Received: from ?IPv6:2a02:908:1252:fb60:83c6:b72d:87bd:4259?
 ([2a02:908:1252:fb60:83c6:b72d:87bd:4259])
 by smtp.gmail.com with ESMTPSA id q20sm10743492ejs.17.2021.02.15.06.54.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 15 Feb 2021 06:54:44 -0800 (PST)
To: David Laight <David.Laight@ACULAB.COM>,
 =?UTF-8?B?J0NocmlzdGlhbiBLw7ZuaWcn?= <christian.koenig@amd.com>,
 Lucas Stach <l.stach@pengutronix.de>, Simon Ser <contact@emersion.fr>
References: <91ff0bbb-ea3a-2663-3453-dea96ccd6dd8@amd.com>
 <GUuZYSQk2hxgykDhSxfB2GWo47lQlVrKBtWMwQUG7Ar2GAag5WQDxBI0zq6nDTooPBzTktyRpnu25Ju1UKE3FYD9yHbkNMAHcmSI96hoJhA=@emersion.fr>
 <da9edfa0-8a18-44a2-fa79-83b4177afd8e@amd.com>
 <8d23f1ca6fe76d8971365bf54ca71ba71698980d.camel@pengutronix.de>
 <7ecf008d-a1f5-ddff-c8ac-8e7bfaf9c680@amd.com>
 <fa3f6eefc0a940b38448b0efd4b3f4e3@AcuMS.aculab.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <33ffa837-a88a-db1c-7861-c70d67557665@gmail.com>
Date: Mon, 15 Feb 2021 15:54:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <fa3f6eefc0a940b38448b0efd4b3f4e3@AcuMS.aculab.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "Sharma,
 Shashank" <Shashank.Sharma@amd.com>, lkml <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] DMA-buf and uncached system memory
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

CgpBbSAxNS4wMi4yMSB1bSAxNTo0MSBzY2hyaWViIERhdmlkIExhaWdodDoKPiBGcm9tOiBDaHJp
c3RpYW4gS8O2bmlnCj4+IFNlbnQ6IDE1IEZlYnJ1YXJ5IDIwMjEgMTI6MDUKPiAuLi4KPj4gU25v
b3BpbmcgdGhlIENQVSBjYWNoZXMgaW50cm9kdWNlcyBzb21lIGV4dHJhIGxhdGVuY3ksIHNvIHdo
YXQgY2FuCj4+IGhhcHBlbiBpcyB0aGF0IHRoZSByZXNwb25zZSB0byB0aGUgUENJZSByZWFkIGNv
bWVzIHRvIGxhdGUgZm9yIHRoZQo+PiBzY2Fub3V0LiBUaGUgcmVzdWx0IGlzIGFuIHVuZGVyZmxv
dyBhbmQgZmxpY2tlcmluZyB3aGVuZXZlciBzb21ldGhpbmcgaXMKPj4gaW4gdGhlIGNhY2hlIHdo
aWNoIG5lZWRzIHRvIGJlIGZsdXNoZWQgZmlyc3QuCj4gQXJlbid0IHlvdSBnb2luZyB0byBnZXQg
dGhlIHNhbWUgcHJvYmxlbSBpZiBhbnkgb3RoZXIgZW5kcG9pbnRzIGFyZQo+IGRvaW5nIG1lbW9y
eSByZWFkcz8KClRoZSBQQ0llIGRldmljZSBpbiB0aGlzIGNhc2UgaXMgcGFydCBvZiB0aGUgU29D
LCBzbyB3ZSBoYXZlIGEgaGlnaCAKcHJpb3JpdHkgY2hhbm5lbCB0byBtZW1vcnkuCgpCZWNhdXNl
IG9mIHRoaXMgdGhlIGhhcmR3YXJlIGRlc2lnbmVyIGFzc3VtZWQgdGhleSBoYXZlIGEgZ3VhcmFu
dGVlZCAKbWVtb3J5IGxhdGVuY3kuCgo+IFBvc3NpYmx5IGV2ZW4gb25lcyB0aGF0IGRvbid0IHJl
cXVpcmUgYSBjYWNoZSBzbm9vcCBhbmQgZmx1c2guCj4KPiBXaGF0IGFib3V0IGp1c3QgdGhlIGNw
dSBkb2luZyBhIHJlYWwgbWVtb3J5IHRyYW5zZmVyPwo+Cj4gT3IgYSBjb21iaW5hdGlvbiBvZiB0
aGUgdHdvIGFib3ZlIGhhcHBlbmluZyBqdXN0IGJlZm9yZSB5b3VyIHJlcXVlc3QuCj4KPiBJZiB5
b3UgZG9uJ3QgaGF2ZSBhIGJpZyBlbm91Z2ggZmlmbyB5b3UnbGwgbG9zZS4KPgo+IEkgZGlkICdm
aXgnIGEgc2ltaWxhcihpc2gpIGlzc3VlIHdpdGggdmlkZW8gRE1BIGxhdGVuY3kgb24gYW4gZW1i
ZWRkZWQKPiBzeXN0ZW0gYmFzZWQgdGhlIG9uIFNBMTEwMC9TQTExMDEgYnkgc2lnbmlmaWNhbnRs
eSByZWR1Y2luZyB0aGUgY2xvY2sKPiB0byB0aGUgVkdBIHBhbmVsIHdoZW5ldmVyIHRoZSBjcHUg
d2FzIGRvaW5nICdzbG93IGlvJy4KPiAoSW50ZXJsZWF2aW5nIGFuIHVuY2FjaGVkIGNwdSBEUkFN
IHdyaXRlIGJldHdlZW4gdGhlIHNsb3cgaW8gY3ljbGVzCj4gYWxzbyBmaXhlZCBpdC4pCj4gQnV0
IHRoZSB2aWRlbyB3YXMgdGhlIG9ubHkgRE1BIGRldmljZSBhbmQgdGhhdCB3YXMgYW4gZW1iZWRk
ZWQgc3lzdGVtLgo+IEdpdmVuIHRoZSBhcHBsaWNhdGlvbiBub3RlIGFib3V0IHZpZGVvIGxhdGVu
Y3kgZGlkbid0IG1lbnRpb24gd2hhdCB3YXMKPiBhY3R1YWxseSBoYXBwZW5pbmcsIEknbSBub3Qg
c3VyZSBob3cgbWFueSBwZW9wbGUgYWN0dWFsbHkgZ290IGl0IHdvcmtpbmchCgpZZWFoLCBJJ20g
YWxzbyBub3Qgc3VyZSBpZiBBTUQgZG9lc24ndCBzb2x2ZSB0aGlzIHdpdGggZGVlcGVyIGZpZm9z
IG9yIAptb3JlIHByZWZldGNoaW5nIGluIGZ1dHVyZSBkZXNpZ25zLgoKQnV0IHlvdSBnYXZlIG1l
IGF0IGxlYXN0IG9uZSBleGFtcGxlIHdoZXJlIHNvbWVib2R5IGhhZCBzaW1pbGFyIHByb2JsZW1z
LgoKVGhhbmtzIGZvciB0aGUgZmVlZGJhY2ssCkNocmlzdGlhbi4KCj4KPiAJRGF2aWQKPgo+IC0K
PiBSZWdpc3RlcmVkIEFkZHJlc3MgTGFrZXNpZGUsIEJyYW1sZXkgUm9hZCwgTW91bnQgRmFybSwg
TWlsdG9uIEtleW5lcywgTUsxIDFQVCwgVUsKPiBSZWdpc3RyYXRpb24gTm86IDEzOTczODYgKFdh
bGVzKQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKPiBMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKPiBodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0t
c2lnCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0
cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

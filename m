Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 177AA4853A2
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Jan 2022 14:36:54 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4B02B3ED8A
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Jan 2022 13:36:53 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	by lists.linaro.org (Postfix) with ESMTPS id CEBAC3ECBF
	for <linaro-mm-sig@lists.linaro.org>; Fri, 31 Dec 2021 17:01:39 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id t26so56839722wrb.4
        for <linaro-mm-sig@lists.linaro.org>; Fri, 31 Dec 2021 09:01:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=OTSybf/FehI6pYOln3P9eF9NWxZwb34ljQ3EhfbORfY=;
        b=dVlRNmU91czZpmVfSBFodQPJyUm7fPAk9/SKokWAHQBr/mqCFDsQ/8CPrIqIuY+yzs
         7EM082dH5CFiVciaNy2eab6C38Y3gmViomkTIC9i0N8OFtYir1oXkGgFZ/IbPKevSrH4
         RJO7gzqdZb70khUL3IwucXOj0gL9oh7FIJX6IyUzckvlg+lO8+pCNmlXDy+iRlgatyAx
         eNn8GsaFho2S6zdHS8xGcPEwU8GOCzIRhPkNUzZTQqv+YA2NjZGWKBgaCffDnGjfZuHF
         dJMpcAk4t3KSTukWvptRb7BTiuC3PX80VlU0nXKUCtXRWk/j1iXjOrvprGjPzUf1+cCr
         /5/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=OTSybf/FehI6pYOln3P9eF9NWxZwb34ljQ3EhfbORfY=;
        b=DDBctpf193iEewyMJk78hZODaxALJD/0eMHRrbD1gSpzEmp22Mhh/7kuXICOhJ7Mj8
         etZWEaHaHzVI78R6hHaxsMLBVvCQJ5r3cyglvM5XuavuYiCRGNNbfSJzhpjkZEtOGUQ7
         2Kwdogi0QFjhFCE8N6ACKQBG5LSbKjP4oQY9G/EZAd9exELrM1e5i8gIssKbwpeK+G72
         by7/E1ncR8UwmsCd8PPxFCmsBfCv76qOTpJPmsGFlYmhD0CowlUwnszrL36nTYdIa7HJ
         WI3+09TkoOEfO4YfR3MYrPGLptmwKhxdaBkmTwm8bA7nDqt9fbzHFG3URI3nZpeyP/Q/
         qxvg==
X-Gm-Message-State: AOAM533IkTZgNmDFdo5fXlSi7nL1jl+eFSt5pNilOhl82SDzztDKd4zN
	jgIZcw6pntJ0sFvml2WL+p2iFyIK71c=
X-Google-Smtp-Source: ABdhPJzhYhe9+iV9lTrCPZXRK8GG575ZUASfEQaxOXdr+TjG+93c5iKi1GDwVUnRQE2jwCHvlE4ydw==
X-Received: by 2002:a05:6512:2216:: with SMTP id h22mr26787332lfu.155.1640872404331;
        Thu, 30 Dec 2021 05:53:24 -0800 (PST)
Received: from [192.168.1.11] ([94.103.235.97])
        by smtp.gmail.com with ESMTPSA id by6sm1346843ljb.78.2021.12.30.05.53.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Dec 2021 05:53:23 -0800 (PST)
Content-Type: multipart/mixed; boundary="------------dCX0IlaUbMjKeidKwYkueUP0"
Message-ID: <83bf58b6-ace2-2db8-4f8b-322e78a3e198@gmail.com>
Date: Thu, 30 Dec 2021 16:53:21 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Content-Language: en-US
To: syzbot <syzbot+2c56b725ec547fa9cb29@syzkaller.appspotmail.com>,
 christian.koenig@amd.com, dri-devel@lists.freedesktop.org,
 gurchetansingh@chromium.org, kraxel@redhat.com,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, sumit.semwal@linaro.org,
 syzkaller-bugs@googlegroups.com
References: <000000000000b0a1a605ce3ec5ad@google.com>
From: Pavel Skripkin <paskripkin@gmail.com>
In-Reply-To: <000000000000b0a1a605ce3ec5ad@google.com>
X-MailFrom: paskripkin@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: L2IBW5Q5BMAZLBSVPPHKG2ZXNKMT2CII
X-Message-ID-Hash: L2IBW5Q5BMAZLBSVPPHKG2ZXNKMT2CII
X-Mailman-Approved-At: Wed, 05 Jan 2022 13:36:34 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [syzbot] general protection fault in sg_alloc_append_table_from_pages
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/L2IBW5Q5BMAZLBSVPPHKG2ZXNKMT2CII/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>

This is a multi-part message in MIME format.
--------------dCX0IlaUbMjKeidKwYkueUP0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/13/21 19:51, syzbot wrote:
> Hello,
> 
> syzbot found the following issue on:
> 
> HEAD commit:    717478d89fe2 Merge tag 'riscv-for-linus-5.15-rc5' of git:/..
> git tree:       upstream
> console output: https://syzkaller.appspot.com/x/log.txt?x=12489abf300000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=32e6048063923b7b
> dashboard link: https://syzkaller.appspot.com/bug?extid=2c56b725ec547fa9cb29
> compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=167b9e4f300000
> 
> The issue was bisected to:
> 
> commit 284562e1f34874e267d4f499362c3816f8f6bc3f
> Author: Gurchetan Singh <gurchetansingh@chromium.org>
> Date:   Tue Dec 3 01:36:27 2019 +0000
> 
>      udmabuf: implement begin_cpu_access/end_cpu_access hooks
> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=12d68447300000
> final oops:     https://syzkaller.appspot.com/x/report.txt?x=11d68447300000
> console output: https://syzkaller.appspot.com/x/log.txt?x=16d68447300000
> 

zero ubuf->pagecount will cause kmalloc_array() to return ZERO_PTR, that 
is unsafe to deref

#syz test
git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master



With regards,
Pavel Skripkin
--------------dCX0IlaUbMjKeidKwYkueUP0
Content-Type: text/plain; charset=UTF-8; name="ph"
Content-Disposition: attachment; filename="ph"
Content-Transfer-Encoding: base64

ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVmLmMgYi9kcml2ZXJzL2RtYS1i
dWYvdWRtYWJ1Zi5jCmluZGV4IGM1N2E2MDlkYjc1Yi4uZTczMzA2ODRkM2I4IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi91
ZG1hYnVmLmMKQEAgLTE5MCw2ICsxOTAsMTAgQEAgc3RhdGljIGxvbmcgdWRtYWJ1Zl9jcmVh
dGUoc3RydWN0IG1pc2NkZXZpY2UgKmRldmljZSwKIAkJaWYgKHVidWYtPnBhZ2Vjb3VudCA+
IHBnbGltaXQpCiAJCQlnb3RvIGVycjsKIAl9CisKKwlpZiAoIXVidWYtPnBhZ2Vjb3VudCkK
KwkJZ290byBlcnI7CisKIAl1YnVmLT5wYWdlcyA9IGttYWxsb2NfYXJyYXkodWJ1Zi0+cGFn
ZWNvdW50LCBzaXplb2YoKnVidWYtPnBhZ2VzKSwKIAkJCQkgICAgR0ZQX0tFUk5FTCk7CiAJ
aWYgKCF1YnVmLT5wYWdlcykgewo=

--------------dCX0IlaUbMjKeidKwYkueUP0
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--------------dCX0IlaUbMjKeidKwYkueUP0--

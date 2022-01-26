Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D3554B6487
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 08:39:51 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7589B3EEC0
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 07:39:50 +0000 (UTC)
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [45.249.212.187])
	by lists.linaro.org (Postfix) with ESMTPS id 683043ED11
	for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Jan 2022 12:10:03 +0000 (UTC)
Received: from kwepemi100010.china.huawei.com (unknown [172.30.72.56])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4JkMrF2qH4zZfM0;
	Wed, 26 Jan 2022 20:06:05 +0800 (CST)
Received: from kwepemm600017.china.huawei.com (7.193.23.234) by
 kwepemi100010.china.huawei.com (7.221.188.54) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 26 Jan 2022 20:09:59 +0800
Received: from [10.174.179.19] (10.174.179.19) by
 kwepemm600017.china.huawei.com (7.193.23.234) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 26 Jan 2022 20:09:59 +0800
Message-ID: <1e219dd7-c2d0-1d1f-f662-2002311adef6@huawei.com>
Date: Wed, 26 Jan 2022 20:09:58 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Content-Language: en-US
To: Marco Elver <elver@google.com>
References: <20220124025205.329752-1-liupeng256@huawei.com>
 <20220124025205.329752-2-liupeng256@huawei.com>
 <Ye5hKItk3j7arjaI@elver.google.com>
 <6eb16a68-9a56-7aea-3dd6-bd719a9ce700@huawei.com>
 <CANpmjNM_bp03RvWYr+PaOxx0DS3LryChweG90QXci3iBgzW4wQ@mail.gmail.com>
 <CANpmjNO8g_MB-5T9YxLKHOe=Mo8AWTmSFGh5jmr479s=j-v0Pg@mail.gmail.com>
From: "liupeng (DM)" <liupeng256@huawei.com>
In-Reply-To: <CANpmjNO8g_MB-5T9YxLKHOe=Mo8AWTmSFGh5jmr479s=j-v0Pg@mail.gmail.com>
X-Originating-IP: [10.174.179.19]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 kwepemm600017.china.huawei.com (7.193.23.234)
X-CFilter-Loop: Reflected
X-MailFrom: liupeng256@huawei.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: MV6B3IIAIZGTORK6AGCM26QSINI7FQUI
X-Message-ID-Hash: MV6B3IIAIZGTORK6AGCM26QSINI7FQUI
X-Mailman-Approved-At: Tue, 15 Feb 2022 07:38:56 +0000
CC: glider@google.com, dvyukov@google.com, corbet@lwn.net, christian.koenig@amd.com, akpm@linux-foundation.org, kasan-dev@googlegroups.com, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 1/3] kfence: Add a module parameter to adjust kfence objects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MV6B3IIAIZGTORK6AGCM26QSINI7FQUI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============1595005723403080923=="

--===============1595005723403080923==
Content-Type: multipart/alternative;
	boundary="------------0r5L9YsFuj0bn5CuUOBFgq1q"
Content-Language: en-US

--------------0r5L9YsFuj0bn5CuUOBFgq1q
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 2022/1/24 19:55, Marco Elver wrote:
> On Mon, 24 Jan 2022 at 12:45, Marco Elver<elver@google.com>  wrote:
>> [ FYI, your reply was not plain text, so LKML may have rejected it. I
>> advise that you switch your email client for LKML emails to plain
>> text. ]
>>
>> On Mon, 24 Jan 2022 at 12:24, liupeng (DM)<liupeng256@huawei.com>  wrote:
>> [...]
>>>> I think the only reasonable way forward is if you add immediate patching
>>>> support to the kernel as the "Note" suggests.
>>> May you give us more details about "immediate patching"?
>> [...]
>>> Thank you for your patient suggestions, it's actually helpful and inspired.
>>> We have integrated your latest work "skipping already covered allocations",
>>> and will do more experiments about KFENCE. Finally, we really hope you can
>>> give us more introductions about "immediate patching".
>> "Immediate patching" would, similar to "static branches" or
>> "alternatives" be based on code hot patching.
>>
>> https://www.kernel.org/doc/html/latest/staging/static-keys.html
>>
>> "Patching immediates" would essentially patch the immediate operands
>> of certain (limited) instructions. I think designing this properly to
>> work across various architectures (like static_keys/jump_label) is
>> very complex. So it may not be a viable near-term option.
>>
>> What Dmitry suggests using a constant virtual address carveout is more
>> realistic. But this means having to discuss with arch maintainers
>> which virtual address ranges can be reserved. The nice thing about
>> just relying on memblock and nothing else is that it is very portable
>> and simple. You can have a look at how KASAN deals with organizing its
>> shadow memory if you are interested.
> Hmm, there may be more issues lurking here:
>
> https://lore.kernel.org/all/20200929140226.GB53442@C02TD0UTHF1T.local/
> https://lore.kernel.org/all/20200929142411.GC53442@C02TD0UTHF1T.local/
>
> ... and I'm guessing if we assign a fixed virtual address range it'll
> live outside the linear mapping, which is likely to break certain
> requirements of kmalloc()'d allocations in certain situations (a
> problem we had with v1 of KFENCE on arm64).
>
> So I don't even know if that's feasible. :-/
>
> Thanks,
> -- Marco
> .

Thank you very much, we will try the suggestions you give.

Thanks,
-- Peng Liu
.

--------------0r5L9YsFuj0bn5CuUOBFgq1q
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2022/1/24 19:55, Marco Elver wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CANpmjNO8g_MB-5T9YxLKHOe=Mo8AWTmSFGh5jmr479s=j-v0Pg@mail.gmail.com">
      <pre class="moz-quote-pre" wrap="">On Mon, 24 Jan 2022 at 12:45, Marco Elver <a class="moz-txt-link-rfc2396E" href="mailto:elver@google.com">&lt;elver@google.com&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
[ FYI, your reply was not plain text, so LKML may have rejected it. I
advise that you switch your email client for LKML emails to plain
text. ]

On Mon, 24 Jan 2022 at 12:24, liupeng (DM) <a class="moz-txt-link-rfc2396E" href="mailto:liupeng256@huawei.com">&lt;liupeng256@huawei.com&gt;</a> wrote:
[...]
</pre>
        <blockquote type="cite">
          <blockquote type="cite">
            <pre class="moz-quote-pre" wrap="">I think the only reasonable way forward is if you add immediate patching
support to the kernel as the "Note" suggests.
</pre>
          </blockquote>
          <pre class="moz-quote-pre" wrap="">
May you give us more details about "immediate patching"?
</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">[...]
</pre>
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">Thank you for your patient suggestions, it's actually helpful and inspired.
We have integrated your latest work "skipping already covered allocations",
and will do more experiments about KFENCE. Finally, we really hope you can
give us more introductions about "immediate patching".
</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">
"Immediate patching" would, similar to "static branches" or
"alternatives" be based on code hot patching.

<a class="moz-txt-link-freetext" href="https://www.kernel.org/doc/html/latest/staging/static-keys.html">https://www.kernel.org/doc/html/latest/staging/static-keys.html</a>

"Patching immediates" would essentially patch the immediate operands
of certain (limited) instructions. I think designing this properly to
work across various architectures (like static_keys/jump_label) is
very complex. So it may not be a viable near-term option.

What Dmitry suggests using a constant virtual address carveout is more
realistic. But this means having to discuss with arch maintainers
which virtual address ranges can be reserved. The nice thing about
just relying on memblock and nothing else is that it is very portable
and simple. You can have a look at how KASAN deals with organizing its
shadow memory if you are interested.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Hmm, there may be more issues lurking here:

<a class="moz-txt-link-freetext" href="https://lore.kernel.org/all/20200929140226.GB53442@C02TD0UTHF1T.local/">https://lore.kernel.org/all/20200929140226.GB53442@C02TD0UTHF1T.local/</a>
<a class="moz-txt-link-freetext" href="https://lore.kernel.org/all/20200929142411.GC53442@C02TD0UTHF1T.local/">https://lore.kernel.org/all/20200929142411.GC53442@C02TD0UTHF1T.local/</a>

... and I'm guessing if we assign a fixed virtual address range it'll
live outside the linear mapping, which is likely to break certain
requirements of kmalloc()'d allocations in certain situations (a
problem we had with v1 of KFENCE on arm64).

So I don't even know if that's feasible. :-/

Thanks,
-- Marco
.</pre>
    </blockquote>
    <pre>Thank you very much, we will try the suggestions you give.

Thanks,
-- Peng Liu
.
</pre>
  </body>
</html>
--------------0r5L9YsFuj0bn5CuUOBFgq1q--

--===============1595005723403080923==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============1595005723403080923==--

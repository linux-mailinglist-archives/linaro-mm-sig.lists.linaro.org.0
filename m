Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E1E04B6488
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 08:39:56 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 850DB3EE71
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 07:39:55 +0000 (UTC)
Received: from szxga08-in.huawei.com (szxga08-in.huawei.com [45.249.212.255])
	by lists.linaro.org (Postfix) with ESMTPS id DDD113ECC4
	for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Jan 2022 12:13:02 +0000 (UTC)
Received: from kwepemi100008.china.huawei.com (unknown [172.30.72.53])
	by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4JkMvj3dtXz1FD5B;
	Wed, 26 Jan 2022 20:09:05 +0800 (CST)
Received: from kwepemm600017.china.huawei.com (7.193.23.234) by
 kwepemi100008.china.huawei.com (7.221.188.57) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 26 Jan 2022 20:12:59 +0800
Received: from [10.174.179.19] (10.174.179.19) by
 kwepemm600017.china.huawei.com (7.193.23.234) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 26 Jan 2022 20:12:58 +0800
Message-ID: <4bb5e98f-83fe-4406-6a50-f3626af8cebb@huawei.com>
Date: Wed, 26 Jan 2022 20:12:58 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Content-Language: en-US
To: Marco Elver <elver@google.com>
References: <20220124025205.329752-1-liupeng256@huawei.com>
 <20220124025205.329752-4-liupeng256@huawei.com>
 <CANpmjNNYG=izN12sqaB3dYbGmM=2yQ8gK=8_BMHkuoaKWMmYPw@mail.gmail.com>
 <261a5287-af0d-424e-d209-db887d952a74@huawei.com>
 <CANpmjNNc6F7tRVn=UqLaW0WAgTr67XFm=CUu5X2D0Xbt3nKXwA@mail.gmail.com>
From: "liupeng (DM)" <liupeng256@huawei.com>
In-Reply-To: <CANpmjNNc6F7tRVn=UqLaW0WAgTr67XFm=CUu5X2D0Xbt3nKXwA@mail.gmail.com>
X-Originating-IP: [10.174.179.19]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 kwepemm600017.china.huawei.com (7.193.23.234)
X-CFilter-Loop: Reflected
X-MailFrom: liupeng256@huawei.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: CJMVI3HKDGR3FCH24K3HEJ4QCOJBES2H
X-Message-ID-Hash: CJMVI3HKDGR3FCH24K3HEJ4QCOJBES2H
X-Mailman-Approved-At: Tue, 15 Feb 2022 07:38:58 +0000
CC: glider@google.com, dvyukov@google.com, corbet@lwn.net, christian.koenig@amd.com, akpm@linux-foundation.org, kasan-dev@googlegroups.com, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 3/3] kfence: Make test case compatible with run time set sample interval
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CJMVI3HKDGR3FCH24K3HEJ4QCOJBES2H/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============6246310054284956404=="

--===============6246310054284956404==
Content-Type: multipart/alternative;
	boundary="------------2sE5CklAQW5Skk0e821jJkdX"
Content-Language: en-US

--------------2sE5CklAQW5Skk0e821jJkdX
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit


On 2022/1/24 20:21, Marco Elver wrote:
> On Mon, 24 Jan 2022 at 13:19, liupeng (DM)<liupeng256@huawei.com>  wrote:
> [...]
>> When KFENCE pool size can be adjusted by boot parameters(assumption),
>> automatically test and train KFENCE may be useful. So far, exporting
>> kfence.sample_interval is not necessary.
> I'm not opposed to the patch (I've also run into this issue, but not
> too frequently) - feel free to just send it with EXPORT_SYMBOL_GPL.
>
> Thanks,
> -- Marco
> .

Good, I will send a revised patch latter.

Thanks,
-- Peng Liu
.

--------------2sE5CklAQW5Skk0e821jJkdX
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 2022/1/24 20:21, Marco Elver wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CANpmjNNc6F7tRVn=UqLaW0WAgTr67XFm=CUu5X2D0Xbt3nKXwA@mail.gmail.com">
      <pre class="moz-quote-pre" wrap="">On Mon, 24 Jan 2022 at 13:19, liupeng (DM) <a class="moz-txt-link-rfc2396E" href="mailto:liupeng256@huawei.com">&lt;liupeng256@huawei.com&gt;</a> wrote:
[...]
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">When KFENCE pool size can be adjusted by boot parameters(assumption),
automatically test and train KFENCE may be useful. So far, exporting
kfence.sample_interval is not necessary.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
I'm not opposed to the patch (I've also run into this issue, but not
too frequently) - feel free to just send it with EXPORT_SYMBOL_GPL.

Thanks,
-- Marco
.</pre>
    </blockquote>
    <pre>Good, I will send a revised patch latter.

Thanks,
-- Peng Liu
.
</pre>
  </body>
</html>
--------------2sE5CklAQW5Skk0e821jJkdX--

--===============6246310054284956404==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============6246310054284956404==--

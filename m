Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A891B4B6484
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 08:39:36 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DA7A5401C4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 07:39:35 +0000 (UTC)
Received: from szxga08-in.huawei.com (szxga08-in.huawei.com [45.249.212.255])
	by lists.linaro.org (Postfix) with ESMTPS id 0B8033EE94
	for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Jan 2022 12:19:02 +0000 (UTC)
Received: from kwepemi100026.china.huawei.com (unknown [172.30.72.54])
	by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4Jj87b3ysNz1FCXK;
	Mon, 24 Jan 2022 20:15:07 +0800 (CST)
Received: from kwepemm600017.china.huawei.com (7.193.23.234) by
 kwepemi100026.china.huawei.com (7.221.188.60) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Mon, 24 Jan 2022 20:18:59 +0800
Received: from [10.174.179.19] (10.174.179.19) by
 kwepemm600017.china.huawei.com (7.193.23.234) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Mon, 24 Jan 2022 20:18:58 +0800
Message-ID: <261a5287-af0d-424e-d209-db887d952a74@huawei.com>
Date: Mon, 24 Jan 2022 20:18:57 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Content-Language: en-US
To: Marco Elver <elver@google.com>
References: <20220124025205.329752-1-liupeng256@huawei.com>
 <20220124025205.329752-4-liupeng256@huawei.com>
 <CANpmjNNYG=izN12sqaB3dYbGmM=2yQ8gK=8_BMHkuoaKWMmYPw@mail.gmail.com>
From: "liupeng (DM)" <liupeng256@huawei.com>
In-Reply-To: <CANpmjNNYG=izN12sqaB3dYbGmM=2yQ8gK=8_BMHkuoaKWMmYPw@mail.gmail.com>
X-Originating-IP: [10.174.179.19]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 kwepemm600017.china.huawei.com (7.193.23.234)
X-CFilter-Loop: Reflected
X-MailFrom: liupeng256@huawei.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: B4QICUMJ6YXRVPLLHUAMG7OGMZKSYDIS
X-Message-ID-Hash: B4QICUMJ6YXRVPLLHUAMG7OGMZKSYDIS
X-Mailman-Approved-At: Tue, 15 Feb 2022 07:38:50 +0000
CC: glider@google.com, dvyukov@google.com, corbet@lwn.net, christian.koenig@amd.com, akpm@linux-foundation.org, kasan-dev@googlegroups.com, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 3/3] kfence: Make test case compatible with run time set sample interval
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/B4QICUMJ6YXRVPLLHUAMG7OGMZKSYDIS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============1353486413360489038=="

--===============1353486413360489038==
Content-Type: multipart/alternative;
	boundary="------------LBsQNxmvK3PJv5A2kezHXevh"
Content-Language: en-US

--------------LBsQNxmvK3PJv5A2kezHXevh
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit


On 2022/1/24 16:25, Marco Elver wrote:
> On Mon, 24 Jan 2022 at 03:37, 'Peng Liu' via kasan-dev
> <kasan-dev@googlegroups.com>  wrote:
>> The parameter kfence_sample_interval can be set via boot parameter
>> and late shell command. However, KFENCE test case just use compile
>> time CONFIG_KFENCE_SAMPLE_INTERVAL, this will make KFENCE test case
>> not run as user desired. This patch will make KFENCE test case
>> compatible with run-time-set sample interval.
>>
>> Signed-off-by: Peng Liu<liupeng256@huawei.com>
>> ---
>>   include/linux/kfence.h  | 2 ++
>>   mm/kfence/core.c        | 3 ++-
>>   mm/kfence/kfence_test.c | 8 ++++----
>>   3 files changed, 8 insertions(+), 5 deletions(-)
>>
>> diff --git a/include/linux/kfence.h b/include/linux/kfence.h
>> index bf91b76b87ee..0fc913a7f017 100644
>> --- a/include/linux/kfence.h
>> +++ b/include/linux/kfence.h
>> @@ -19,6 +19,8 @@
>>
>>   extern bool kfence_enabled;
>>   extern unsigned long kfence_num_objects;
>> +extern unsigned long kfence_sample_interval;
>> +
>>   /*
>>    * We allocate an even number of pages, as it simplifies calculations to map
>>    * address to metadata indices; effectively, the very first page serves as an
>> diff --git a/mm/kfence/core.c b/mm/kfence/core.c
>> index 2301923182b8..e2fcae34cc84 100644
>> --- a/mm/kfence/core.c
>> +++ b/mm/kfence/core.c
>> @@ -50,7 +50,8 @@
>>
>>   bool kfence_enabled __read_mostly;
>>
>> -static unsigned long kfence_sample_interval __read_mostly = CONFIG_KFENCE_SAMPLE_INTERVAL;
>> +unsigned long kfence_sample_interval __read_mostly = CONFIG_KFENCE_SAMPLE_INTERVAL;
>> +EXPORT_SYMBOL(kfence_sample_interval); /* Export for test modules. */
> While it would make some situations more convenient, I've wanted to
> avoid exporting a new symbol just for the test. And in most cases it
> only makes sense to run the test on a custom debug kernel.
>
> Why do you need this?

To automatically do more tests.

>
> Should you really need this, I suggest at least using
> EXPORT_SYMBOL_GPL. Should you want it, you can resend this patch
> standalone detached from the rest.
>
> Thanks,
> -- Marco
> .

When KFENCE pool size can be adjusted by boot parameters(assumption),
automatically test and train KFENCE may be useful. So far, exporting
kfence.sample_interval is not necessary.

Thanks,
-- Peng Liu
.

--------------LBsQNxmvK3PJv5A2kezHXevh
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 2022/1/24 16:25, Marco Elver wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CANpmjNNYG=izN12sqaB3dYbGmM=2yQ8gK=8_BMHkuoaKWMmYPw@mail.gmail.com">
      <pre class="moz-quote-pre" wrap="">On Mon, 24 Jan 2022 at 03:37, 'Peng Liu' via kasan-dev
<a class="moz-txt-link-rfc2396E" href="mailto:kasan-dev@googlegroups.com">&lt;kasan-dev@googlegroups.com&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
The parameter kfence_sample_interval can be set via boot parameter
and late shell command. However, KFENCE test case just use compile
time CONFIG_KFENCE_SAMPLE_INTERVAL, this will make KFENCE test case
not run as user desired. This patch will make KFENCE test case
compatible with run-time-set sample interval.

Signed-off-by: Peng Liu <a class="moz-txt-link-rfc2396E" href="mailto:liupeng256@huawei.com">&lt;liupeng256@huawei.com&gt;</a>
---
 include/linux/kfence.h  | 2 ++
 mm/kfence/core.c        | 3 ++-
 mm/kfence/kfence_test.c | 8 ++++----
 3 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/include/linux/kfence.h b/include/linux/kfence.h
index bf91b76b87ee..0fc913a7f017 100644
--- a/include/linux/kfence.h
+++ b/include/linux/kfence.h
@@ -19,6 +19,8 @@

 extern bool kfence_enabled;
 extern unsigned long kfence_num_objects;
+extern unsigned long kfence_sample_interval;
+
 /*
  * We allocate an even number of pages, as it simplifies calculations to map
  * address to metadata indices; effectively, the very first page serves as an
diff --git a/mm/kfence/core.c b/mm/kfence/core.c
index 2301923182b8..e2fcae34cc84 100644
--- a/mm/kfence/core.c
+++ b/mm/kfence/core.c
@@ -50,7 +50,8 @@

 bool kfence_enabled __read_mostly;

-static unsigned long kfence_sample_interval __read_mostly = CONFIG_KFENCE_SAMPLE_INTERVAL;
+unsigned long kfence_sample_interval __read_mostly = CONFIG_KFENCE_SAMPLE_INTERVAL;
+EXPORT_SYMBOL(kfence_sample_interval); /* Export for test modules. */
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
While it would make some situations more convenient, I've wanted to
avoid exporting a new symbol just for the test. And in most cases it
only makes sense to run the test on a custom debug kernel.

Why do you need this?</pre>
    </blockquote>
    <pre>To automatically do more tests.
</pre>
    <blockquote type="cite"
cite="mid:CANpmjNNYG=izN12sqaB3dYbGmM=2yQ8gK=8_BMHkuoaKWMmYPw@mail.gmail.com">
      <pre class="moz-quote-pre" wrap="">

Should you really need this, I suggest at least using
EXPORT_SYMBOL_GPL. Should you want it, you can resend this patch
standalone detached from the rest.

Thanks,
-- Marco
.</pre>
    </blockquote>
    <pre>When KFENCE pool size can be adjusted by boot parameters(assumption),
automatically test and train KFENCE may be useful. So far, exporting
kfence.sample_interval is not necessary. 

Thanks,
-- Peng Liu
.

</pre>
  </body>
</html>
--------------LBsQNxmvK3PJv5A2kezHXevh--

--===============1353486413360489038==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============1353486413360489038==--

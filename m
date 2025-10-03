Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E031BB5D2C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 03 Oct 2025 04:44:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 326D245F4C
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Oct 2025 02:44:36 +0000 (UTC)
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	by lists.linaro.org (Postfix) with ESMTPS id 7C5C8454EA
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Oct 2025 02:44:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=l1zrowe0;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of bagasdotme@gmail.com designates 209.85.214.177 as permitted sender) smtp.mailfrom=bagasdotme@gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-26e68904f0eso18025385ad.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 02 Oct 2025 19:44:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759459472; x=1760064272; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qetHx9HVdf2g3s5a7dZOmiU3bkwsi2YCKNcOlkRT3So=;
        b=l1zrowe0bFMKVu/8Rp0eyGmo4oAAK7t/04xxizBlH2EI6aH4U0zWLJUKvGflJkKTKY
         Ealb3AgkXmgtKX/8WEYFyXdfU3ySgKRejwTuyafZnLwJuw2NcaIZo3aVmauiXXGCipNr
         B4uO4qbwyCqVbAKmyALfBnixEMe9217q4J+YMycSGvXgI+JnnKZOb53GVudenxivIzf8
         j8Q81crtjXyyUp8ri1RCV+qMDpWzMGjsiJX2/q1Zj/CBoTxdFqGlvrehwIvcNe1Z0cBL
         GcoiRVHsYVRfRvWBGJhtSRNcp022t2n8S+PknulM7j+ekmRgvWaR5BnbqlayGWohtG3o
         komw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759459472; x=1760064272;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qetHx9HVdf2g3s5a7dZOmiU3bkwsi2YCKNcOlkRT3So=;
        b=GcMJVZ00O+/gFElyDxwJeJ0Jl0EN1DdFTHcOf4mJ/8nbdn2/TnwvYw8UH7mQEMZvFf
         pzfcBTkGRvavC0D2uycWLpVhe3tvikrnwEQBAq/pm/nHtBmoXJYaO57SPWXPK9WblPMa
         U7JJE3Ue34Ptjq9gT0Y2eBcY4g2vpECJ82OUQmEdMFWXl5ZShQdUfGg/iHgu7a2Yf0Fp
         u+W2N1ACWm4Ndbh6kH28gTBC/PldTRz0NXTl7MswFNnZ8uqs7jG45SkvFNVQFQ0qulZm
         4RbYX7+5p5BoHzOjPfnxNdZbEx6epavzVdWv4QqI4uJfTlVYU3bEQScTGX0bWfG2np0s
         /e1g==
X-Forwarded-Encrypted: i=1; AJvYcCWyftF01EwKBgIAafhcjLeQ86kv6UiT0/F6iN4FM3PnB60M1Qm/7/z2bggECL08fsVaSWzZ4+F7/VO3RwHM@lists.linaro.org
X-Gm-Message-State: AOJu0YwjO0OtY1FUMfd3LN+LgnulMkDoPB7Qt0Kj3Aq0NKw5k+0Qg1K7
	dh6l7i1C4dUNtmvlN23fBmNmEwKIYxwqbeZOigM+WdsY5Gwc0+wwPS2e
X-Gm-Gg: ASbGncuNgmfOQt2vuN+y2XMzLxNU/rg4dDFl2h6AGJiLsIUgxSyfzI3wTo+inIgXPP9
	IJbE3lgktBbFhuqDTgBbkswKFaa+YNopNIQg/Zu7pdyLzvafXvnsJCMOC2PS45gEqbvFm7Ntz8T
	+W7217sEIFX7l3FjFftmH+iQvAWDBCYCzH5LOJGs2J5l84FQZh467EAmmivrz3u0AGMpH2nNACL
	zsg/17wtypts6BMAAOH5UKE2p+PMsli8mW91GoR7a4Svi1fmCQDmpnrBXmmIkQAWQfwyqT+pAXG
	KClkQR4JKtWEGW2XntYASd7xj/++pwM/jyyBQ7B6vXPfYGun7SAkhyfGQUy+z2fExFOBUMwEFPO
	LdetTzNY/xlniBiFdu+wem0GeJaQErfS2IaG9oSQZYgiJOV3ZZw==
X-Google-Smtp-Source: AGHT+IGTk3XgIPC+Yt+2pMzfIfhEmbENJy1R9Vc1MqojWaFYNyx0I6oDlvH7RtuE6DjjMeP7CuWGMQ==
X-Received: by 2002:a17:903:f8c:b0:28e:873d:93 with SMTP id d9443c01a7336-28e9a5652b5mr16545255ad.17.1759459472123;
        Thu, 02 Oct 2025 19:44:32 -0700 (PDT)
Received: from archie.me ([103.124.138.155])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d1108c5sm34680725ad.16.2025.10.02.19.44.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Oct 2025 19:44:31 -0700 (PDT)
Received: by archie.me (Postfix, from userid 1000)
	id 84565420B701; Fri, 03 Oct 2025 09:44:28 +0700 (WIB)
Date: Fri, 3 Oct 2025 09:44:28 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Byungchul Park <byungchul@sk.com>, linux-kernel@vger.kernel.org
Message-ID: <aN84jKyrE1BumpLj@archie.me>
References: <20251002081247.51255-1-byungchul@sk.com>
 <20251002081247.51255-29-byungchul@sk.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251002081247.51255-29-byungchul@sk.com>
X-Rspamd-Queue-Id: 7C5C8454EA
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	FORGED_RECIPIENTS(2.00)[m:byungchul@sk.com,m:linux-kernel@vger.kernel.org,m:kernel_team@skhynix.com,m:torvalds@linux-foundation.org,m:damien.lemoal@opensource.wdc.com,m:linux-ide@vger.kernel.org,m:adilger.kernel@dilger.ca,m:linux-ext4@vger.kernel.org,m:mingo@redhat.com,m:peterz@infradead.org,m:will@kernel.org,m:tglx@linutronix.de,m:rostedt@goodmis.org,m:joel@joelfernandes.org,m:sashal@kernel.org,m:daniel.vetter@ffwll.ch,m:duyuyang@gmail.com,m:johannes.berg@intel.com,m:tj@kernel.org,m:tytso@mit.edu,m:willy@infradead.org,m:david@fromorbit.com,m:amir73il@gmail.com,m:gregkh@linuxfoundation.org,m:kernel-team@lge.com,m:linux-mm@kvack.org,m:akpm@linux-foundation.org,m:mhocko@kernel.org,m:minchan@kernel.org,m:hannes@cmpxchg.org,m:vdavydov.dev@gmail.com,m:sj@kernel.org,m:jglisse@redhat.com,m:dennis@kernel.org,m:cl@linux.com,m:penberg@kernel.org,m:rientjes@google.com,m:vbabka@suse.cz,m:ngupta@vflare.org,m:linux-block@vger.kernel.org,m:josef@toxicpanda.com,m:linux-fsdevel@vger.kernel.org,m:jac
 k@suse.cz,m:jlayton@kernel.org,m:dan.j.williams@intel.com,m:hch@infradead.org,m:djwong@kernel.org,m:dri-devel@lists.freedesktop.org,m:rodrigosiqueiramelo@gmail.com,m:melissa.srw@gmail.com,m:hamohammed.sa@gmail.com,m:harry.yoo@oracle.com,m:chris.p.wilson@intel.com,m:gwan-gyeong.mun@intel.com,m:max.byungchul.park@gmail.com,m:boqun.feng@gmail.com,m:longman@redhat.com,m:yunseong.kim@ericsson.com,m:ysk@kzalloc.com,m:yeoreum.yun@arm.com,m:netdev@vger.kernel.org,m:matthew.brost@intel.com,m:her0gyugyu@gmail.com,m:corbet@lwn.net,m:catalin.marinas@arm.com,m:bp@alien8.de,m:dave.hansen@linux.intel.com,m:x86@kernel.org,m:hpa@zytor.com,m:luto@kernel.org,m:sumit.semwal@linaro.org,m:gustavo@padovan.org,m:christian.koenig@amd.com,m:andi.shyti@kernel.org,m:arnd@arndb.de,m:lorenzo.stoakes@oracle.com,m:Liam.Howlett@oracle.com,m:rppt@kernel.org,m:surenb@google.com,m:mcgrof@kernel.org,m:petr.pavlu@suse.com,m:da.gomez@kernel.org,m:samitolvanen@google.com,m:paulmck@kernel.org,m:frederic@kernel.org,m:neeraj
 .upadhyay@kernel.org,m:joelagnelf@nvidia.com,m:josh@joshtriplett.org,m:urezki@gmail.com,m:mathieu.desnoyers@efficios.com,m:jiangshanlai@gmail.com,m:qiang.zhang@linux.dev,m:juri.lelli@redhat.com,m:vincent.guittot@linaro.org,m:dietmar.eggemann@arm.com,m:bsegall@google.com,m:mgorman@suse.de,m:vschneid@redhat.com,m:chuck.lever@oracle.com,s:linaro-mm-sig@lists.linaro.org];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.177:from];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[skhynix.com,linux-foundation.org,opensource.wdc.com,vger.kernel.org,dilger.ca,redhat.com,infradead.org,kernel.org,linutronix.de,goodmis.org,joelfernandes.org,ffwll.ch,gmail.com,intel.com,mit.edu,fromorbit.com,linuxfoundation.org,lge.com,kvack.org,cmpxchg.org,linux.com,google.com,suse.cz,vflare.org,toxicpanda.com,lists.freedesktop.org,oracle.com,ericsson.com,kzalloc.com,arm.com,lwn.net,alien8.de,linux.intel.com,zytor.com,linaro.org,padovan.org,amd.com,arndb.de,suse.com,nvidia.com,joshtriplett.org,efficios.com,linux.dev,suse.de,brown.name,talpey.com,huawei.com,amazon.co.uk,linux.alibaba.com,glider.be,treblig.org,star-ark.net,valla.it,vivo.com,baidu.com,lists.infradead.org,lists.linaro.org,lists.linux.dev];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	DNSWL_BLOCKED(0.00)[209.85.214.177:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCPT_COUNT_GT_50(0.00)[150];
	TAGGED_RCPT(0.00)[renesas];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: R63UXDHWTWM6TVGZ7KFWAFK5DF2QQYST
X-Message-ID-Hash: R63UXDHWTWM6TVGZ7KFWAFK5DF2QQYST
X-MailFrom: bagasdotme@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: kernel_team@skhynix.com, torvalds@linux-foundation.org, damien.lemoal@opensource.wdc.com, linux-ide@vger.kernel.org, adilger.kernel@dilger.ca, linux-ext4@vger.kernel.org, mingo@redhat.com, peterz@infradead.org, will@kernel.org, tglx@linutronix.de, rostedt@goodmis.org, joel@joelfernandes.org, sashal@kernel.org, duyuyang@gmail.com, johannes.berg@intel.com, tj@kernel.org, tytso@mit.edu, willy@infradead.org, david@fromorbit.com, amir73il@gmail.com, gregkh@linuxfoundation.org, kernel-team@lge.com, linux-mm@kvack.org, akpm@linux-foundation.org, mhocko@kernel.org, minchan@kernel.org, hannes@cmpxchg.org, vdavydov.dev@gmail.com, sj@kernel.org, jglisse@redhat.com, dennis@kernel.org, cl@linux.com, penberg@kernel.org, rientjes@google.com, vbabka@suse.cz, ngupta@vflare.org, linux-block@vger.kernel.org, josef@toxicpanda.com, linux-fsdevel@vger.kernel.org, jack@suse.cz, jlayton@kernel.org, dan.j.williams@intel.com, hch@infradead.org, djwong@kernel.org, dri-devel@lists.freedesktop.org, rodrigosi
 queiramelo@gmail.com, melissa.srw@gmail.com, hamohammed.sa@gmail.com, harry.yoo@oracle.com, chris.p.wilson@intel.com, gwan-gyeong.mun@intel.com, max.byungchul.park@gmail.com, boqun.feng@gmail.com, longman@redhat.com, yunseong.kim@ericsson.com, ysk@kzalloc.com, yeoreum.yun@arm.com, netdev@vger.kernel.org, matthew.brost@intel.com, her0gyugyu@gmail.com, corbet@lwn.net, catalin.marinas@arm.com, bp@alien8.de, dave.hansen@linux.intel.com, x86@kernel.org, hpa@zytor.com, luto@kernel.org, sumit.semwal@linaro.org, gustavo@padovan.org, christian.koenig@amd.com, andi.shyti@kernel.org, arnd@arndb.de, lorenzo.stoakes@oracle.com, Liam.Howlett@oracle.com, rppt@kernel.org, surenb@google.com, mcgrof@kernel.org, petr.pavlu@suse.com, da.gomez@kernel.org, samitolvanen@google.com, paulmck@kernel.org, frederic@kernel.org, neeraj.upadhyay@kernel.org, joelagnelf@nvidia.com, josh@joshtriplett.org, urezki@gmail.com, mathieu.desnoyers@efficios.com, jiangshanlai@gmail.com, qiang.zhang@linux.dev, juri.lelli@redh
 at.com, vincent.guittot@linaro.org, dietmar.eggemann@arm.com, bsegall@google.com, mgorman@suse.de, vschneid@redhat.com, chuck.lever@oracle.com, neil@brown.name, okorniev@redhat.com, Dai.Ngo@oracle.com, tom@talpey.com, trondmy@kernel.org, anna@kernel.org, kees@kernel.org, bigeasy@linutronix.de, clrkwllms@kernel.org, mark.rutland@arm.com, ada.coupriediaz@arm.com, kristina.martsenko@arm.com, wangkefeng.wang@huawei.com, broonie@kernel.org, kevin.brodsky@arm.com, dwmw@amazon.co.uk, shakeel.butt@linux.dev, ast@kernel.org, ziy@nvidia.com, yuzhao@google.com, baolin.wang@linux.alibaba.com, usamaarif642@gmail.com, joel.granados@kernel.org, richard.weiyang@gmail.com, geert+renesas@glider.be, tim.c.chen@linux.intel.com, linux@treblig.org, alexander.shishkin@linux.intel.com, lillian@star-ark.net, chenhuacai@kernel.org, francesco@valla.it, guoweikang.kernel@gmail.com, link@vivo.com, jpoimboe@kernel.org, masahiroy@kernel.org, brauner@kernel.org, thomas.weissschuh@linutronix.de, oleg@redhat.com, mj
 guzik@gmail.com, andrii@kernel.org, wangfushuai@baidu.com, linux-doc@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-i2c@vger.kernel.org, linux-arch@vger.kernel.org, linux-modules@vger.kernel.org, rcu@vger.kernel.org, linux-nfs@vger.kernel.org, linux-rt-devel@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v17 28/47] dept: add documentation for dept
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/R63UXDHWTWM6TVGZ7KFWAFK5DF2QQYST/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Oct 02, 2025 at 05:12:28PM +0900, Byungchul Park wrote:
> This document describes the concept and APIs of dept.
> 
> Signed-off-by: Byungchul Park <byungchul@sk.com>
> ---
>  Documentation/dependency/dept.txt     | 735 ++++++++++++++++++++++++++
>  Documentation/dependency/dept_api.txt | 117 ++++
>  2 files changed, 852 insertions(+)
>  create mode 100644 Documentation/dependency/dept.txt
>  create mode 100644 Documentation/dependency/dept_api.txt

What about writing dept docs in reST (like the rest of kernel documentation)?

---- >8 ----
diff --git a/Documentation/dependency/dept.txt b/Documentation/locking/dept.rst
similarity index 92%
rename from Documentation/dependency/dept.txt
rename to Documentation/locking/dept.rst
index 5dd358b96734e6..7b90a0d95f0876 100644
--- a/Documentation/dependency/dept.txt
+++ b/Documentation/locking/dept.rst
@@ -8,7 +8,7 @@ How lockdep works
 
 Lockdep detects a deadlock by checking lock acquisition order. For
 example, a graph to track acquisition order built by lockdep might look
-like:
+like::
 
    A -> B -
            \
@@ -16,12 +16,12 @@ like:
            /
    C -> D -
 
-   where 'A -> B' means that acquisition A is prior to acquisition B
-   with A still held.
+where 'A -> B' means that acquisition A is prior to acquisition B
+with A still held.
 
 Lockdep keeps adding each new acquisition order into the graph in
 runtime. For example, 'E -> C' will be added when the two locks have
-been acquired in the order, E and then C. The graph will look like:
+been acquired in the order, E and then C. The graph will look like::
 
        A -> B -
                \
@@ -32,10 +32,10 @@ been acquired in the order, E and then C. The graph will look like:
    \                  /
     ------------------
 
-   where 'A -> B' means that acquisition A is prior to acquisition B
-   with A still held.
+where 'A -> B' means that acquisition A is prior to acquisition B
+with A still held.
 
-This graph contains a subgraph that demonstrates a loop like:
+This graph contains a subgraph that demonstrates a loop like::
 
                 -> E -
                /      \
@@ -67,6 +67,8 @@ mechanisms, lockdep doesn't work.
 
 Can lockdep detect the following deadlock?
 
+::
+
    context X	   context Y	   context Z
 
 		   mutex_lock A
@@ -80,6 +82,8 @@ Can lockdep detect the following deadlock?
 
 No. What about the following?
 
+::
+
    context X		   context Y
 
 			   mutex_lock A
@@ -101,7 +105,7 @@ What leads a deadlock
 ---------------------
 
 A deadlock occurs when one or multi contexts are waiting for events that
-will never happen. For example:
+will never happen. For example::
 
    context X	   context Y	   context Z
 
@@ -121,24 +125,24 @@ We call this *deadlock*.
 If an event occurrence is a prerequisite to reaching another event, we
 call it *dependency*. In this example:
 
-   Event A occurrence is a prerequisite to reaching event C.
-   Event C occurrence is a prerequisite to reaching event B.
-   Event B occurrence is a prerequisite to reaching event A.
+   * Event A occurrence is a prerequisite to reaching event C.
+   * Event C occurrence is a prerequisite to reaching event B.
+   * Event B occurrence is a prerequisite to reaching event A.
 
 In terms of dependency:
 
-   Event C depends on event A.
-   Event B depends on event C.
-   Event A depends on event B.
+   * Event C depends on event A.
+   * Event B depends on event C.
+   * Event A depends on event B.
 
-Dependency graph reflecting this example will look like:
+Dependency graph reflecting this example will look like::
 
     -> C -> A -> B -
    /                \
    \                /
     ----------------
 
-   where 'A -> B' means that event A depends on event B.
+where 'A -> B' means that event A depends on event B.
 
 A circular dependency exists. Such a circular dependency leads a
 deadlock since no waiters can have desired events triggered.
@@ -152,7 +156,7 @@ Introduce DEPT
 --------------
 
 DEPT(DEPendency Tracker) tracks wait and event instead of lock
-acquisition order so as to recognize the following situation:
+acquisition order so as to recognize the following situation::
 
    context X	   context Y	   context Z
 
@@ -165,18 +169,18 @@ acquisition order so as to recognize the following situation:
 				   event A
 
 and builds up a dependency graph in runtime that is similar to lockdep.
-The graph might look like:
+The graph might look like::
 
     -> C -> A -> B -
    /                \
    \                /
     ----------------
 
-   where 'A -> B' means that event A depends on event B.
+where 'A -> B' means that event A depends on event B.
 
 DEPT keeps adding each new dependency into the graph in runtime. For
 example, 'B -> D' will be added when event D occurrence is a
-prerequisite to reaching event B like:
+prerequisite to reaching event B like::
 
    |
    v
@@ -184,7 +188,7 @@ prerequisite to reaching event B like:
    .
    event B
 
-After the addition, the graph will look like:
+After the addition, the graph will look like::
 
                      -> D
                     /
@@ -209,6 +213,8 @@ How DEPT works
 Let's take a look how DEPT works with the 1st example in the section
 'Limitation of lockdep'.
 
+::
+
    context X	   context Y	   context Z
 
 		   mutex_lock A
@@ -220,7 +226,7 @@ Let's take a look how DEPT works with the 1st example in the section
 		   mutex_unlock A
 				   mutex_unlock A
 
-Adding comments to describe DEPT's view in terms of wait and event:
+Adding comments to describe DEPT's view in terms of wait and event::
 
    context X	   context Y	   context Z
 
@@ -248,7 +254,7 @@ Adding comments to describe DEPT's view in terms of wait and event:
 				   mutex_unlock A
 				   /* event A */
 
-Adding more supplementary comments to describe DEPT's view in detail:
+Adding more supplementary comments to describe DEPT's view in detail::
 
    context X	   context Y	   context Z
 
@@ -283,7 +289,7 @@ Adding more supplementary comments to describe DEPT's view in detail:
 				   mutex_unlock A
 				   /* event A that's been valid since 4 */
 
-Let's build up dependency graph with this example. Firstly, context X:
+Let's build up dependency graph with this example. Firstly, context X::
 
    context X
 
@@ -292,7 +298,7 @@ Let's build up dependency graph with this example. Firstly, context X:
    /* start to take into account event B's context */
    /* 2 */
 
-There are no events to create dependency. Next, context Y:
+There are no events to create dependency. Next, context Y::
 
    context Y
 
@@ -317,13 +323,13 @@ waits between 3 and the event, event B does not create dependency. For
 event A, there is a wait, folio_lock B, between 1 and the event. Which
 means event A cannot be triggered if event B does not wake up the wait.
 Therefore, we can say event A depends on event B, say, 'A -> B'. The
-graph will look like after adding the dependency:
+graph will look like after adding the dependency::
 
    A -> B
 
-   where 'A -> B' means that event A depends on event B.
+where 'A -> B' means that event A depends on event B.
 
-Lastly, context Z:
+Lastly, context Z::
 
    context Z
 
@@ -343,7 +349,7 @@ wait, mutex_lock A, between 2 and the event - remind 2 is at a very
 start and before the wait in timeline. Which means event B cannot be
 triggered if event A does not wake up the wait. Therefore, we can say
 event B depends on event A, say, 'B -> A'. The graph will look like
-after adding the dependency:
+after adding the dependency::
 
     -> A -> B -
    /           \
@@ -367,6 +373,8 @@ Interpret DEPT report
 
 The following is the example in the section 'How DEPT works'.
 
+::
+
    context X	   context Y	   context Z
 
 		   mutex_lock A
@@ -402,7 +410,7 @@ The following is the example in the section 'How DEPT works'.
 
 We can Simplify this by replacing each waiting point with [W], each
 point where its event's context starts with [S] and each event with [E].
-This example will look like after the replacement:
+This example will look like after the replacement::
 
    context X	   context Y	   context Z
 
@@ -419,6 +427,8 @@ This example will look like after the replacement:
 DEPT uses the symbols [W], [S] and [E] in its report as described above.
 The following is an example reported by DEPT for a real problem.
 
+::
+
    Link: https://lore.kernel.org/lkml/6383cde5-cf4b-facf-6e07-1378a485657d@I-love.SAKURA.ne.jp/#t
    Link: https://lore.kernel.org/lkml/1674268856-31807-1-git-send-email-byungchul.park@lge.com/
 
@@ -620,6 +630,8 @@ The following is an example reported by DEPT for a real problem.
 
 Let's take a look at the summary that is the most important part.
 
+::
+
    ---------------------------------------------------
    summary
    ---------------------------------------------------
@@ -639,7 +651,7 @@ Let's take a look at the summary that is the most important part.
    [W]: the wait blocked
    [E]: the event not reachable
 
-The summary shows the following scenario:
+The summary shows the following scenario::
 
    context A	   context B	   context ?(unknown)
 
@@ -652,7 +664,7 @@ The summary shows the following scenario:
 
    [E] unlock(&ni->ni_lock:0)
 
-Adding supplementary comments to describe DEPT's view in detail:
+Adding supplementary comments to describe DEPT's view in detail::
 
    context A	   context B	   context ?(unknown)
 
@@ -677,7 +689,7 @@ Adding supplementary comments to describe DEPT's view in detail:
    [E] unlock(&ni->ni_lock:0)
    /* event that's been valid since 2 */
 
-Let's build up dependency graph with this report. Firstly, context A:
+Let's build up dependency graph with this report. Firstly, context A::
 
    context A
 
@@ -697,13 +709,13 @@ wait, folio_lock(&f1), between 2 and the event. Which means
 unlock(&ni->ni_lock:0) is not reachable if folio_unlock(&f1) does not
 wake up the wait. Therefore, we can say unlock(&ni->ni_lock:0) depends
 on folio_unlock(&f1), say, 'unlock(&ni->ni_lock:0) -> folio_unlock(&f1)'.
-The graph will look like after adding the dependency:
+The graph will look like after adding the dependency::
 
    unlock(&ni->ni_lock:0) -> folio_unlock(&f1)
 
-   where 'A -> B' means that event A depends on event B.
+where 'A -> B' means that event A depends on event B.
 
-Secondly, context B:
+Secondly, context B::
 
    context B
 
@@ -719,14 +731,14 @@ very start and before the wait in timeline. Which means folio_unlock(&f1)
 is not reachable if unlock(&ni->ni_lock:0) does not wake up the wait.
 Therefore, we can say folio_unlock(&f1) depends on unlock(&ni->ni_lock:0),
 say, 'folio_unlock(&f1) -> unlock(&ni->ni_lock:0)'. The graph will look
-like after adding the dependency:
+like after adding the dependency::
 
     -> unlock(&ni->ni_lock:0) -> folio_unlock(&f1) -
    /                                                \
    \                                                /
     ------------------------------------------------
 
-   where 'A -> B' means that event A depends on event B.
+where 'A -> B' means that event A depends on event B.
 
 A new loop has been created. So DEPT can report it as a deadlock! Cool!
 
diff --git a/Documentation/dependency/dept_api.txt b/Documentation/locking/dept_api.rst
similarity index 97%
rename from Documentation/dependency/dept_api.txt
rename to Documentation/locking/dept_api.rst
index 8e0d5a118a460e..96c4d65f4a9a2d 100644
--- a/Documentation/dependency/dept_api.txt
+++ b/Documentation/locking/dept_api.rst
@@ -10,6 +10,8 @@ already applied into the existing synchronization primitives e.g.
 waitqueue, swait, wait_for_completion(), dma fence and so on.  The basic
 APIs of SDT are:
 
+.. code-block:: c
+
    /*
     * After defining 'struct dept_map map', initialize the instance.
     */
@@ -27,6 +29,8 @@ APIs of SDT are:
 
 The advanced APIs of SDT are:
 
+.. code-block:: c
+
    /*
     * After defining 'struct dept_map map', initialize the instance
     * using an external key.
@@ -83,6 +87,8 @@ Do not use these APIs directly.  These are the wrappers for typical
 locks, that have been already applied into major locks internally e.g.
 spin lock, mutex, rwlock and so on.  The APIs of LDT are:
 
+.. code-block:: c
+   
    ldt_init(map, key, sub, name);
    ldt_lock(map, sub_local, try, nest, ip);
    ldt_rlock(map, sub_local, try, nest, ip, queued);
@@ -96,6 +102,8 @@ Raw APIs
 --------
 Do not use these APIs directly.  The raw APIs of dept are:
 
+.. code-block:: c
+
    dept_free_range(start, size);
    dept_map_init(map, key, sub, name);
    dept_map_reinit(map, key, sub, name);
diff --git a/Documentation/locking/index.rst b/Documentation/locking/index.rst
index 6a9ea96c8bcb70..7ec3dce7fee425 100644
--- a/Documentation/locking/index.rst
+++ b/Documentation/locking/index.rst
@@ -24,6 +24,8 @@ Locking
     percpu-rw-semaphore
     robust-futexes
     robust-futex-ABI
+    dept
+    dept_api
 
 .. only::  subproject and html
 

> +Can lockdep detect the following deadlock?
> +
> +   context X	   context Y	   context Z
> +
> +		   mutex_lock A
> +   folio_lock B
> +		   folio_lock B <- DEADLOCK
> +				   mutex_lock A <- DEADLOCK
> +				   folio_unlock B
> +		   folio_unlock B
> +		   mutex_unlock A
> +				   mutex_unlock A
> +
> +No. What about the following?
> +
> +   context X		   context Y
> +
> +			   mutex_lock A
> +   mutex_lock A <- DEADLOCK
> +			   wait_for_complete B <- DEADLOCK
> +   complete B
> +			   mutex_unlock A
> +   mutex_unlock A

Can you explain how DEPT detects deadlock on the second example above (like
the first one being described in "How DEPT works" section)?

Confused...

-- 
An old man doll... just what I always wanted! - Clara
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

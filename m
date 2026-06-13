Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +ixrO6a6LGpWVwQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 13 Jun 2026 04:04:23 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5AD67D7E4
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 13 Jun 2026 04:04:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=hef6xxr+;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 938EC3F8E8
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 13 Jun 2026 02:04:21 +0000 (UTC)
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com [209.85.215.195])
	by lists.linaro.org (Postfix) with ESMTPS id 3ECB4401B0
	for <linaro-mm-sig@lists.linaro.org>; Sat, 13 Jun 2026 02:04:02 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id 41be03b00d2f7-c858961a8efso664726a12.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jun 2026 19:04:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781316241; x=1781921041; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qvlrbvjYmzCXoLrV2hsJdEbJOUWSCE5NGHj2A3xomvU=;
        b=hef6xxr+u7qt5Jt+AxLa9Fqsg3w/YbtZNRWUR9xcAVcP6ZSnl++mcHZPCLb3aJSiiC
         rD899pxksWcNluVM3FgTfwQ0e7kul5NS8LY7+psinTTOWBzHPgxqk0Ozp6biiyJ5+y5i
         qLzEV1gQ1zk4iXZAw4ZYxjyOlRvTYcdJlAwY3Wy2SbOXmTbQT3ZyAW4SaBG9vAiUjQlK
         AbC+pvjt94Yg6F2gbFMS7XIPgG4TtgD/S8T8Z6ocuIRU4MYJtbcwHZiEY/6A/fnkbS6N
         5D1pC2fZqecUwG74MVHyGiOMcqYvKqmxZa8cER/jBjIw55Yg7RITml2Q8X0kNKlgKebT
         tG4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781316241; x=1781921041;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qvlrbvjYmzCXoLrV2hsJdEbJOUWSCE5NGHj2A3xomvU=;
        b=R+gqbuNcqcn4+GMIaj7dH3eEjRPwmavH69bX2G8P+Oi/tvpRIpmHx3GHicLGLX1KWt
         jSpambP4TDAw5gNsVpnoDwpJlYdQsgRiD+lj3je2VIYAk1373J8bwgguEd1pp1ZNgfRg
         Q3YLiujD5wvFfuD045JF2IJP4dAU+YG6aDTEJ+90rsNgyB+xPtCyfh3Lwdaf3Xgjs1sh
         tgv20nm0Qz0FmN6c4BVJz36g7F70qXb7JezMFSmO1R98EkI/Flt/DLUiLX3i3db9ln6V
         iHMxSYf/u03R/+DYMxscceKAS5mIFoRUaEu+d8DvCyqoFr6Z+v3J/KE3SQwj6fQ9HljY
         pEwg==
X-Forwarded-Encrypted: i=1; AFNElJ/vTQIP3z7SVQYwLYHTtCLoWD+KOvoWk1SXz0aj7RlrZr9oH3YxZIdHOYIpbCuP6H5s5PBo7h9SIwvuMzfl@lists.linaro.org
X-Gm-Message-State: AOJu0Yxv9m2w7xdmXA95lE6GE5xcVmTBWUHZn3R2cIGrRhwCq2DDSiW8
	iv0FaEW4Yv/oJxSbx6TKgAYJ3VroLkDaqToCIiY/isEsznPzQXAZON+G
X-Gm-Gg: Acq92OFhyIEl5NzmxVZbpbgi5uWePXa08H78kkAQueOcJPgruGF42m0YHEpSheZRMTw
	Vwk1JD78/3b3uc8XeFceEHFXC8JNBQcvBrLulPLZRbV/I6GcafPbZI8iIlguhtmv4lywq8srAQ0
	jT873yrVMNxP533Gmxuo9bZoTJPnQTlFt8bAQRHPE4ikt2MbPr/7jh0YBBd/xvRpn6Zb9dVVn9m
	2Q9Fdik9XbsCFHZXUUADUVfRfogcgU8qyyncExX6dMgljEpG8pWhsUTXCmaSnLTuAiWhuUfsW+f
	UHFyLRw5qDuXXXk0LByz8lhOlgMZox6c7nblYzFPkbzJAHGKOIovb6MmJ5+i66SFKfDOWhZWdQm
	gzZo1U5JN7CVctZXWz2t7DEJS53g5QpUjiuv+fIvn6ho2SCw0t8V/yrfgf3XtHJnRNXciR8NbPw
	edahlwqAs9OuW//drJ
X-Received: by 2002:a05:6a20:2d14:b0:3b4:6265:3786 with SMTP id adf61e73a8af0-3b784026fc9mr6690558637.43.1781316241406;
        Fri, 12 Jun 2026 19:04:01 -0700 (PDT)
Received: from localhost ([2a03:2880:2ff:4e::])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c8665186d98sm3006091a12.16.2026.06.12.19.04.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 19:04:00 -0700 (PDT)
Date: Fri, 12 Jun 2026 19:03:50 -0700
From: Stanislav Fomichev <sdf.kernel@gmail.com>
To: Bobby Eshleman <bobbyeshleman@gmail.com>
Message-ID: <aiy6fWaIILSj6dpr@devvm7509.cco0.facebook.com>
References: <20260612-tcpdm-large-niovs-v3-0-a3b693e76fcb@meta.com>
 <20260612-tcpdm-large-niovs-v3-4-a3b693e76fcb@meta.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260612-tcpdm-large-niovs-v3-4-a3b693e76fcb@meta.com>
X-Spamd-Bar: ----
Message-ID-Hash: CYS7NFLL7UNLRIFUOZM5NP32LGOJVYX3
X-Message-ID-Hash: CYS7NFLL7UNLRIFUOZM5NP32LGOJVYX3
X-MailFrom: sdf.kernel@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, Gerd Hoffmann <kraxel@redhat.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Shuah Khan <shuah@kernel.org>, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kselftest@vger.kernel.org, sdf@fomichev.me, razor@blackwall.org, daniel@iogearbox.net, almasrymina@google.com, matttbe@kernel.org, skhawaja@google.com, dw@davidwei.uk, Bobby Eshleman <bobbyeshleman@meta.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v3 4/4] selftests/net: devmem.py: add check_rx_large_niov
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CYS7NFLL7UNLRIFUOZM5NP32LGOJVYX3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:bobbyeshleman@gmail.com,m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:andrew+netdev@lunn.ch,m:kraxel@redhat.com,m:vivek.kasireddy@intel.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:shuah@kernel.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kselftest@vger.kernel.org,m:sdf@fomichev.me,m:razor@blackwall.org,m:daniel@iogearbox.net,m:almasrymina@google.com,m:matttbe@kernel.org,m:skhawaja@google.com,m:dw@davidwei.uk,m:bobbyeshleman@meta.com,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[sdfkernel@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[27];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,davemloft.net,google.com,redhat.com,lunn.ch,intel.com,linaro.org,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,fomichev.me,blackwall.org,iogearbox.net,davidwei.uk,meta.com];
	DKIM_TRACE(0.00)[gmail.com:-];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sdfkernel@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,netdev];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,devvm7509.cco0.facebook.com:mid,linaro.org:email,fomichev.me:email,meta.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7C5AD67D7E4

On 06/12, Bobby Eshleman wrote:
> From: Bobby Eshleman <bobbyeshleman@meta.com>
> 
> Add a new devmem test case for binding the dmabuf with rx-buf-size=16K.
> The test sweeps RX payload sizes straddling the niov boundary to cover
> the sub-niov, exact-niov, and multi-niov RX paths.
> 
> Signed-off-by: Bobby Eshleman <bobbyeshleman@meta.com>

Acked-by: Stanislav Fomichev <sdf@fomichev.me>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

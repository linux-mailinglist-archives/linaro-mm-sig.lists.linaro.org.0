Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id he+8EIMvK2pZ3wMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jun 2026 23:58:27 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C965467584D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jun 2026 23:58:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=n5eu5ZsE;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DB4E240A3E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jun 2026 21:58:25 +0000 (UTC)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	by lists.linaro.org (Postfix) with ESMTPS id B4FE540A3B
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jun 2026 21:58:13 +0000 (UTC)
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-36b9033d230so247546a91.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jun 2026 14:58:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781215093; x=1781819893; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=058Dub1D8Mo8YvUnluCsrCmQe9OxK3zbzQpkHf2iTGc=;
        b=n5eu5ZsECCzRzWWmDuB0JPdCSQpgGPUB4i2EpyoNm8TEWAkNe63lxzba4bawqjX6vU
         Y7fax+NCQtrD/jq81gEmrC/L6IuupSyxRk++l0f1g1kp/GH1vRqPTigFyx05heTDoBKr
         hmBYbo3f0IRg7jlz2Dthb110A87RJO1zqyoR5+ZQ4Pg5HrPmaYGTBvG3II680sn9bTxA
         vhI7UTY6iAcVc6H3JTOTeFqWABqGPhQdvqBI6gwhOnmXH5wHzBJIAIYyhwhqcwqMr2xV
         YdxFcu2mdn4T1jUNs/jlKY9kkye3/xTCp16hRo4pyPPSXX/zroGoB9rZZrpr0ZMAgTw6
         7FvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781215093; x=1781819893;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=058Dub1D8Mo8YvUnluCsrCmQe9OxK3zbzQpkHf2iTGc=;
        b=PdOiEBFtbhj2f7z0VwF8PWA3rMS8IqPwxnWypbn5FsCJF/fKwpHz+J+0T130lBZvbx
         CZAFGWM4+6K1Ngn5vTL+sXC/2J62Mmz+jJB0wzKu1qFHZpvK63roeTeL5IDxOa+B9krP
         PiBUcGpDrOecBIzFZCEAr6c1ciD9/Q1WVYWUpw1opdsNTyETYxgjdTHKGhfHykbLAZ8t
         t6CjGFTkkrYY1JxdOmE5FM1dcDqeWVKNOV9vyei0QRC+H03D5k4heBMDvSbQjqbl1N5W
         3DAvwb5w390wBGigkY26CRjH362nDjlAVd7lonQEds5Or50JHcNeGfx29/SiKOKblsHj
         jo/Q==
X-Forwarded-Encrypted: i=1; AFNElJ8pk3W02tFdXKY220fQUnH6b7//hhUCULzvk0A/PhPIBDT7f4S+klQ8l8B5S4/ENKsD3xzzhrYjZgwzL3ES@lists.linaro.org
X-Gm-Message-State: AOJu0Yym3ElRVXRkK6lMEuQJD1AaLjys3w40YzctP491rCQMBy4OWCiV
	v+0Qvum4qd2oDwKXreLJyNcESX+iqgNLG56kgSsu4sCPuk1B4QZuu+OU
X-Gm-Gg: Acq92OET/QUu5WkMLuJ0NozeD1NlhvHP+NNRAAMzVxShUMcitHl1wu0sPwJUn/Fm2By
	I+7gqRqWmLFur4Ly5OixWqHB0/5l3D82qsaGMVPruKQAaXfuk1MN2IQnz3dNRb7g7RQwH/41GMT
	MNxihRZfIwj+MK2QxozxXwEa2B1BBOz5cknZA85EfsrvUoSv5w+0x5g1620pGAOW6prlRFV/h2k
	ScumfsuOlNBHOb2xmpj++oPNng34s+omAHSJhuLkj244QttK9XTckhF8TsjqAOQ3ovQwd57pAKX
	i49fMIlNUt7Rz4uCEJfUl2u0FpPYtlJzApShVJywda+JB286JvJKfvDIRPrR1o0mSlvwUrKXiGX
	U1Ym1JZ7x2nQUJ91luYwoobKqQ7bisv+X0+RW5bHjwh5iI2TEwKSwJFBYFmd79OgPnqIO7p44Os
	w91cgyJMK/ZVUSq3jphAi2BqAz+Jg3LV6nqi6wGEZDOgk=
X-Received: by 2002:a17:90b:2cc3:b0:36b:de66:92c3 with SMTP id 98e67ed59e1d1-379ef747839mr387023a91.10.1781215092780;
        Thu, 11 Jun 2026 14:58:12 -0700 (PDT)
Received: from devvm29614.prn0.facebook.com ([2a03:2880:ff:8::])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-379c3240b5esm327367a91.0.2026.06.11.14.58.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2026 14:58:12 -0700 (PDT)
Date: Thu, 11 Jun 2026 14:58:10 -0700
From: Bobby Eshleman <bobbyeshleman@gmail.com>
To: Stanislav Fomichev <sdf.kernel@gmail.com>
Message-ID: <aisvcqQp37rnfK5d@devvm29614.prn0.facebook.com>
References: <20260611-tcpdm-large-niovs-v2-0-ee2bf15e7523@meta.com>
 <20260611-tcpdm-large-niovs-v2-3-ee2bf15e7523@meta.com>
 <aislm0fS2MSDMzKf@devvm7509.cco0.facebook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aislm0fS2MSDMzKf@devvm7509.cco0.facebook.com>
X-Spamd-Bar: ----
Message-ID-Hash: RISCCY3OYUHX2COLLW7O7GIRNVSMDPXZ
X-Message-ID-Hash: RISCCY3OYUHX2COLLW7O7GIRNVSMDPXZ
X-MailFrom: bobbyeshleman@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, Gerd Hoffmann <kraxel@redhat.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Shuah Khan <shuah@kernel.org>, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kselftest@vger.kernel.org, sdf@fomichev.me, razor@blackwall.org, daniel@iogearbox.net, almasrymina@google.com, matttbe@kernel.org, skhawaja@google.com, dw@davidwei.uk, Bobby Eshleman <bobbyeshleman@meta.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v2 3/4] selftests/net: ncdevmem: add -b option to set rx-buf-size on bind
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RISCCY3OYUHX2COLLW7O7GIRNVSMDPXZ/>
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
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:sdf.kernel@gmail.com,m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:andrew+netdev@lunn.ch,m:kraxel@redhat.com,m:vivek.kasireddy@intel.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:shuah@kernel.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kselftest@vger.kernel.org,m:sdf@fomichev.me,m:razor@blackwall.org,m:daniel@iogearbox.net,m:almasrymina@google.com,m:matttbe@kernel.org,m:skhawaja@google.com,m:dw@davidwei.uk,m:bobbyeshleman@meta.com,m:sdfkernel@gmail.com,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[bobbyeshleman@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,davemloft.net,google.com,redhat.com,lunn.ch,intel.com,linaro.org,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,fomichev.me,blackwall.org,iogearbox.net,davidwei.uk,meta.com];
	DKIM_TRACE(0.00)[gmail.com:-];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bobbyeshleman@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,netdev];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[meta.com:email,devvm29614.prn0.facebook.com:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C965467584D

On Thu, Jun 11, 2026 at 02:22:54PM -0700, Stanislav Fomichev wrote:
> On 06/11, Bobby Eshleman wrote:
> > From: Bobby Eshleman <bobbyeshleman@meta.com>
> > 
> > Add -b <bytes> to request a non-default niov size via
> > NETDEV_A_DMABUF_RX_BUF_SIZE. When the value exceeds PAGE_SIZE,
> > udmabuf_alloc() switches to an MFD_HUGETLB-backed memfd so each 2 MB
> > hugepage produces one naturally-aligned sg entry.
> > 
> > Reject values > 2 MB up front: MFD_HUGETLB + udmabuf can only guarantee
> > 2 MB per sg entry (one hugepage), so a larger rx_buf_size would fail the
> > per-sg length/alignment check.
> > 
> > Add CONFIG_HUGETLBFS=y to drivers/net/hw/config so the new path is
> > reachable in the CI kernels built for these tests.
> > 
> > Signed-off-by: Bobby Eshleman <bobbyeshleman@meta.com>
> > ---
> >  tools/testing/selftests/drivers/net/hw/config     |  1 +
> >  tools/testing/selftests/drivers/net/hw/ncdevmem.c | 49 +++++++++++++++++++++--
> >  2 files changed, 47 insertions(+), 3 deletions(-)
> > 
> > diff --git a/tools/testing/selftests/drivers/net/hw/config b/tools/testing/selftests/drivers/net/hw/config
> > index cd20024218cd..ed8642b68094 100644
> > --- a/tools/testing/selftests/drivers/net/hw/config
> > +++ b/tools/testing/selftests/drivers/net/hw/config
> > @@ -3,6 +3,7 @@ CONFIG_FAIL_FUNCTION=y
> >  CONFIG_FAULT_INJECTION=y
> >  CONFIG_FAULT_INJECTION_DEBUG_FS=y
> >  CONFIG_FUNCTION_ERROR_INJECTION=y
> > +CONFIG_HUGETLBFS=y
> >  CONFIG_INET6_ESP=y
> >  CONFIG_INET6_ESP_OFFLOAD=y
> >  CONFIG_INET_ESP=y
> > diff --git a/tools/testing/selftests/drivers/net/hw/ncdevmem.c b/tools/testing/selftests/drivers/net/hw/ncdevmem.c
> > index d96e8a3b5a65..325c128191e2 100644
> > --- a/tools/testing/selftests/drivers/net/hw/ncdevmem.c
> > +++ b/tools/testing/selftests/drivers/net/hw/ncdevmem.c
> > @@ -61,6 +61,7 @@
> >  #include <sys/time.h>
> >  
> >  #include <linux/memfd.h>
> > +#include <sys/param.h>
> >  #include <linux/dma-buf.h>
> >  #include <linux/errqueue.h>
> >  #include <linux/udmabuf.h>
> > @@ -79,6 +80,7 @@
> >  #define PAGE_SHIFT 12
> >  #define TEST_PREFIX "ncdevmem"
> >  #define NUM_PAGES 16000
> > +#define MB(x) ((x) << 20)
> >  
> >  #ifndef MSG_SOCK_DEVMEM
> >  #define MSG_SOCK_DEVMEM 0x2000000
> > @@ -100,6 +102,7 @@ static unsigned int dmabuf_id;
> >  static uint32_t tx_dmabuf_id;
> >  static int waittime_ms = 500;
> >  static bool fail_on_linear;
> > +static uint32_t rx_buf_size;
> >  
> >  /* System state loaded by current_config_load() */
> >  #define MAX_FLOWS	8
> > @@ -142,6 +145,7 @@ static struct memory_buffer *udmabuf_alloc(size_t size)
> >  {
> >  	struct udmabuf_create create;
> >  	struct memory_buffer *ctx;
> > +	unsigned int memfd_flags;
> >  	int ret;
> >  
> >  	ctx = malloc(sizeof(*ctx));
> > @@ -156,9 +160,14 @@ static struct memory_buffer *udmabuf_alloc(size_t size)
> >  		goto err_free_ctx;
> >  	}
> >  
> > -	ctx->memfd = memfd_create("udmabuf-test", MFD_ALLOW_SEALING);
> > +	memfd_flags = MFD_ALLOW_SEALING;
> 
> [..]
> 
> > +	if (rx_buf_size > (uint32_t)getpagesize())
> 
> What's the logic behind explicit (uint32_t) cast? uint vs int
> comparisons should promote the int to uint automatically?

Right, it's actually not needed. Avoids -Wsign-compare, but we don't use
it anyway.

> 
> > +		memfd_flags |= MFD_HUGETLB | MFD_HUGE_2MB;
> > +
> > +	ctx->memfd = memfd_create("udmabuf-test", memfd_flags);
> >  	if (ctx->memfd < 0) {
> > -		pr_err("[skip,no-memfd]");
> > +		pr_err("[skip,no-memfd%s]",
> > +		       (memfd_flags & MFD_HUGETLB) ? " (need hugepages)" : "");
> >  		goto err_close_dev;
> >  	}
> >  
> > @@ -168,6 +177,11 @@ static struct memory_buffer *udmabuf_alloc(size_t size)
> >  		goto err_close_memfd;
> >  	}
> >  
> > +	if (memfd_flags & MFD_HUGETLB) {
> > +		size = roundup(size, MB(2));
> > +		ctx->size = size;
> > +	}
> > +
> >  	ret = ftruncate(ctx->memfd, size);
> >  	if (ret == -1) {
> >  		pr_err("[FAIL,memfd-truncate]");
> > @@ -699,6 +713,8 @@ static int bind_rx_queue(unsigned int ifindex, unsigned int dmabuf_fd,
> >  	netdev_bind_rx_req_set_ifindex(req, ifindex);
> >  	netdev_bind_rx_req_set_fd(req, dmabuf_fd);
> >  	__netdev_bind_rx_req_set_queues(req, queues, n_queue_index);
> > +	if (rx_buf_size)
> > +		netdev_bind_rx_req_set_rx_buf_size(req, rx_buf_size);
> >  
> >  	rsp = netdev_bind_rx(*ys, req);
> >  	if (!rsp) {
> > @@ -1411,7 +1427,7 @@ int main(int argc, char *argv[])
> >  	int is_server = 0, opt;
> >  	int ret, err = 1;
> >  
> > -	while ((opt = getopt(argc, argv, "Lls:c:p:v:q:t:f:z:n")) != -1) {
> > +	while ((opt = getopt(argc, argv, "Lls:c:p:v:q:t:f:z:nb:")) != -1) {
> >  		switch (opt) {
> >  		case 'L':
> >  			fail_on_linear = true;
> > @@ -1446,6 +1462,33 @@ int main(int argc, char *argv[])
> >  		case 'n':
> >  			skip_config = 1;
> >  			break;
> > +		case 'b': {
> > +			char *endp;
> > +			unsigned long val;
> 
> Christmas tree here as well?

Ah right, don't know how I missed that. Thank you.

> 
> > +
> > +			errno = 0;
> > +			val = strtoul(optarg, &endp, 0);
> 
> [..]
> 
> > +			if (errno || endp == optarg || *endp || val == 0 ||
> > +			    val > UINT32_MAX) {
> > +				pr_err("invalid rx_buf_size: %s", optarg);
> > +				return 1;
> > +			}
> 
> This is too sophisticated :-/ Just (if val == UINT32_MAX && errno == ERANGE) ?
> (you're looking for an overflow here supposedly?)

yes, sounds good!

> 
> [..]
> 
> > +			if (val & (val - 1)) {
> > +				pr_err("rx_buf_size must be a power of 2");
> > +				return 1;
> > +			}
> > +			if (val < (unsigned long)getpagesize()) {
> > +				pr_err("rx_buf_size must be >= PAGE_SIZE (%d)",
> > +				       getpagesize());
> > +				return 1;
> > +			}
> > +			if (val > MB(2)) {
> > +				pr_err("rx_buf_size > 2 MB not supported");
> > +				return 1;
> > +			}
> 
> We already check these on the kernel size, so should be ok to drop? 

True, that works.

Best,
Bobby
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

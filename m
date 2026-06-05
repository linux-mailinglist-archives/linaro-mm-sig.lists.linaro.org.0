Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fb3+H+BJKWobTwMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:26:24 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id F1F37668C47
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:26:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b="Hd211/Uk";
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1D00140988
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:26:23 +0000 (UTC)
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	by lists.linaro.org (Postfix) with ESMTPS id 6CBE83F756
	for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Jun 2026 16:20:38 +0000 (UTC)
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2bf2247e38eso21919275ad.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 05 Jun 2026 09:20:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780676437; x=1781281237; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mql6HNKVt0P+1uPegRUW8zlGYKpmXHvNpDN0uRKtg58=;
        b=Hd211/UkSmZMYkssDx7Rt7gQk0BREp0R01VA+7LdZXZPP7MBQU/N6uHR0eq1FUqg6s
         2C2bPK/NZuRYSD4Ypa2IY8O/YHIEG/8O0wKgo+8meG/fFfxs46EzF6Y9ncVnSkoXmpvq
         QkQzlJY1QJxxFWISu/aeF+v+z2XJ2Cjk7ClUad7sDHdut9zT3XgclGns68V5Yqe2HM9C
         4e70aC+i2Qs1Dl7s5dFuH4BNa67qF7YhAmyp5nZXOzZQCgvexHZTl32TSuir2Fa6Md4W
         wa0oXgGHxtFBgKZZvcO5zpdfK39TEZgY1vCVdGvF4NFmjmC96GCoMFOb3OI6xRUrndfU
         1BNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780676437; x=1781281237;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mql6HNKVt0P+1uPegRUW8zlGYKpmXHvNpDN0uRKtg58=;
        b=RK5lQTCld0BZyQ3cd+V6AW4smzTHimwSwZO21ZU2epQsSykI2kxjII7AcAlwU5lNhp
         O8N/ZvfFwWr7vtDm/eH+mp/8ao+QwnYYXjEAoYwPgwqw/WWrB3PdB4Vduzajl9WeCd1j
         GiaCwfDwHRs4es0TARd2gqediqKMOTqjJq5AgJG9Qf7tovrXx1mJ33vRNnNICfIdiVGr
         Kns/9+geCK92EYRn+WAa952gRxo//6ic56M4FzNQr/F1YvEnTXsyOMD8ksm7dVsBwjj8
         XN0T0Dirv+X5vqCXqvDyDTtvmfLGfbzXxUteSq1XMknFCPWg4NyUX+ccDCXD2b9V4okp
         vk0Q==
X-Forwarded-Encrypted: i=1; AFNElJ8rGMOVwXHRW7tLfJbHhR9ElaLdxMLhzfQPLYp7IU6MIEcBs5cj27Kz6oqur32TKcXLKUn+ymzy73jL3jj/@lists.linaro.org
X-Gm-Message-State: AOJu0YwSuvBNsx3/QHANphoQ/zGZ72iewvQf1a6EAGTCGgaXqYGkka09
	FUQoXj9BhrpLL0VuQqS0kQhUXqfCvYhx2JNc5nLI+X9wKha3WiT6ircK
X-Gm-Gg: Acq92OGh203HoLIBhx0hgb1N7ca7Xdv1ca0lDk833zOnekZgsNKgu1iQUYKqVgWzel/
	Ju/ne306KTjFxU7AxhTlZ1ioOKqMg27N1hyFwWDjWOxRKg7v5eHPU5aKUbVlZHvIB18rd1emSGq
	5pM6EqJ8IYk7iVUxFRD3wgdYpTAUTcvJU4swPE0lVEsXbwRBBEJ1ILgWWpGLlVWsghe7eO06oLC
	PKOfIauPOTc2WsQVJ9qevNZIf9x3BYd9yt/IM9TavLRi1+OH9fdda0D/QF+x3q9xpZOZ+yHTop2
	3Ee0sL8TSZZ/1Ggcd6Mu1G4FeLAJ05JJV/lG0gddOCNd9rJsby5tQbLaNkOYkc321gT016nFy4u
	nLeftVuIyvLpmrSTGni06D/Zxh37HG5VA/Tsa12VJVBdOgojB38C/A/6hrsGkMO56F5M48qZmeq
	HrfyPoi55BdmGzCpyvU3FWrJbtAN1DsMeTILrjA3gNrAwK6VubegD1wvo=
X-Received: by 2002:a17:903:2c0e:b0:2bf:356f:4e17 with SMTP id d9443c01a7336-2c1e821d398mr55753675ad.13.1780676437322;
        Fri, 05 Jun 2026 09:20:37 -0700 (PDT)
Received: from devvm29614.prn0.facebook.com ([2a03:2880:ff:72::])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c164fa404fsm97497065ad.37.2026.06.05.09.20.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jun 2026 09:20:36 -0700 (PDT)
Date: Fri, 5 Jun 2026 09:20:32 -0700
From: Bobby Eshleman <bobbyeshleman@gmail.com>
To: Stanislav Fomichev <sdf.kernel@gmail.com>
Message-ID: <aiL3UM9aULBypEk7@devvm29614.prn0.facebook.com>
References: <20260603-tcpdm-large-niovs-v1-0-f37a4ac6726c@meta.com>
 <20260603-tcpdm-large-niovs-v1-1-f37a4ac6726c@meta.com>
 <aiLrsLM8N0VzrNMe@devvm7509.cco0.facebook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aiLrsLM8N0VzrNMe@devvm7509.cco0.facebook.com>
X-Spamd-Bar: ----
X-MailFrom: bobbyeshleman@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: FGKS5NZ6YQ6UFYXOZRL22ELN3VY6GZSV
X-Message-ID-Hash: FGKS5NZ6YQ6UFYXOZRL22ELN3VY6GZSV
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:24:33 +0000
CC: Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, Gerd Hoffmann <kraxel@redhat.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Shuah Khan <shuah@kernel.org>, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kselftest@vger.kernel.org, sdf@fomichev.me, razor@blackwall.org, daniel@iogearbox.net, almasrymina@google.com, matttbe@kernel.org, skhawaja@google.com, dw@davidwei.uk, Bobby Eshleman <bobbyeshleman@meta.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next 1/4] net: devmem: allow rx-buf-size > PAGE_SIZE per dmabuf binding
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FGKS5NZ6YQ6UFYXOZRL22ELN3VY6GZSV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[115];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:sdf.kernel@gmail.com,m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:andrew+netdev@lunn.ch,m:kraxel@redhat.com,m:vivek.kasireddy@intel.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:shuah@kernel.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kselftest@vger.kernel.org,m:sdf@fomichev.me,m:razor@blackwall.org,m:daniel@iogearbox.net,m:almasrymina@google.com,m:matttbe@kernel.org,m:skhawaja@google.com,m:dw@davidwei.uk,m:bobbyeshleman@meta.com,m:sdfkernel@gmail.com,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[27];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[bobbyeshleman@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bobbyeshleman@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,davemloft.net,google.com,redhat.com,lunn.ch,intel.com,linaro.org,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,fomichev.me,blackwall.org,iogearbox.net,davidwei.uk,meta.com];
	TAGGED_RCPT(0.00)[linaro-mm-sig,netdev];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DKIM_TRACE(0.00)[gmail.com:-];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,linaro.org:email,meta.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F1F37668C47

On Fri, Jun 05, 2026 at 08:33:04AM -0700, Stanislav Fomichev wrote:
> On 06/03, Bobby Eshleman wrote:
> > From: Bobby Eshleman <bobbyeshleman@meta.com>
> > 
> > Every devmem dmabuf binding today hands the page_pool PAGE_SIZE niovs.
> > This caps a single RX descriptor at PAGE_SIZE, burning CPU on buffer
> > churn for large flows.
> > 
> > Add a bind-time netlink attribute, NETDEV_A_DMABUF_RX_BUF_SIZE, that
> > lets userspace request a larger niov size. The value must be a power of
> > two >= PAGE_SIZE.
> > 
> > Measurements
> > ------------
> > Setup: kperf in devmem RX/TX cuda mode, 4 flows, 64 MB messages, 60s,
> > dctcp, num-rx-queues=4, dmabuf-rx/tx-size-mb=2048, 10 runs per niov
> > size, mlx5.
> > 
> > CPU Util:
> > 
> >    niov        net sirq %        net idle %         app sys %        app idle %
> >   -----  ----------------  ----------------  ----------------  ----------------
> >      4K   62.38 +/-  8.27   33.40 +/-  7.51   54.15 +/- 10.23   43.67 +/- 10.53
> >     16K   58.91 +/-  5.35   35.23 +/-  5.88   41.05 +/-  8.87   56.42 +/-  9.24
> >     32K   64.12 +/-  0.68   31.09 +/-  1.48   44.54 +/-  3.51   52.63 +/-  3.65
> >     64K   54.69 +/-  5.54   39.67 +/-  5.81   35.47 +/-  3.11   61.97 +/-  3.27
> > 
> > RX app sys % drops ~19% from 4K to 64K.
> > 
> > Throughput:
> > 
> >    niov       RX dev Gbps   RX flow avg Gbps
> >   -----  ----------------  -----------------
> >      4K  300.63 +/- 53.21    75.16 +/- 13.30
> >     16K  321.35 +/- 28.20    80.34 +/-  7.05
> >     32K  347.63 +/-  2.20    86.91 +/-  0.55
> >     64K  332.11 +/- 14.26    83.03 +/-  3.56
> > 
> > Throughput seems to increase, but the stdev is pretty wide so could just
> > be noise.
> > 
> > kperf support (not yet merged):
> > https://github.com/facebookexperimental/kperf/commit/8837577f920876bce6986ec18869ac04439ebcd2
> > 
> > Signed-off-by: Bobby Eshleman <bobbyeshleman@meta.com>
> > ---
> >  Documentation/netlink/specs/netdev.yaml |  8 +++++
> >  include/uapi/linux/netdev.h             |  1 +
> >  net/core/devmem.c                       | 52 +++++++++++++++++++--------------
> >  net/core/devmem.h                       | 13 ++++++---
> >  net/core/netdev-genl-gen.c              |  5 ++--
> >  net/core/netdev-genl.c                  | 18 ++++++++++--
> >  tools/include/uapi/linux/netdev.h       |  1 +
> >  7 files changed, 68 insertions(+), 30 deletions(-)
> > 
> > diff --git a/Documentation/netlink/specs/netdev.yaml b/Documentation/netlink/specs/netdev.yaml
> > index a1f4c5a561e9..063119907983 100644
> > --- a/Documentation/netlink/specs/netdev.yaml
> > +++ b/Documentation/netlink/specs/netdev.yaml
> > @@ -591,6 +591,13 @@ attribute-sets:
> >          type: u32
> >          checks:
> >            min: 1
> > +      -
> > +        name: rx-buf-size
> > +        doc: |
> > +          Size in bytes of each RX buffer the NIC writes into from the bound
> > +          dmabuf. Must be a power of two and >= PAGE_SIZE; defaults to
> > +          PAGE_SIZE.
> > +        type: u32
> >  
> >  operations:
> >    list:
> > @@ -805,6 +812,7 @@ operations:
> >              - ifindex
> >              - fd
> >              - queues
> > +            - rx-buf-size
> >          reply:
> >            attributes:
> >              - id
> > diff --git a/include/uapi/linux/netdev.h b/include/uapi/linux/netdev.h
> > index 7df1056a35fd..180a4ffffd60 100644
> > --- a/include/uapi/linux/netdev.h
> > +++ b/include/uapi/linux/netdev.h
> > @@ -217,6 +217,7 @@ enum {
> >  	NETDEV_A_DMABUF_QUEUES,
> >  	NETDEV_A_DMABUF_FD,
> >  	NETDEV_A_DMABUF_ID,
> > +	NETDEV_A_DMABUF_RX_BUF_SIZE,
> >  
> >  	__NETDEV_A_DMABUF_MAX,
> >  	NETDEV_A_DMABUF_MAX = (__NETDEV_A_DMABUF_MAX - 1)
> > diff --git a/net/core/devmem.c b/net/core/devmem.c
> > index 957d6b96216b..5a1c0d7984a8 100644
> > --- a/net/core/devmem.c
> > +++ b/net/core/devmem.c
> > @@ -46,7 +46,7 @@ static dma_addr_t net_devmem_get_dma_addr(const struct net_iov *niov)
> >  
> >  	owner = net_devmem_iov_to_chunk_owner(niov);
> >  	return owner->base_dma_addr +
> > -	       ((dma_addr_t)net_iov_idx(niov) << PAGE_SHIFT);
> > +	       ((dma_addr_t)net_iov_idx(niov) << owner->binding->niov_shift);
> >  }
> >  
> >  static void net_devmem_dmabuf_binding_release(struct percpu_ref *ref)
> > @@ -93,13 +93,14 @@ net_devmem_alloc_dmabuf(struct net_devmem_dmabuf_binding *binding)
> >  	ssize_t offset;
> >  	ssize_t index;
> >  
> > -	dma_addr = gen_pool_alloc_owner(binding->chunk_pool, PAGE_SIZE,
> > +	dma_addr = gen_pool_alloc_owner(binding->chunk_pool,
> > +					1UL << binding->niov_shift,
> >  					(void **)&owner);
> >  	if (!dma_addr)
> >  		return NULL;
> >  
> >  	offset = dma_addr - owner->base_dma_addr;
> > -	index = offset / PAGE_SIZE;
> > +	index = offset >> binding->niov_shift;
> >  	niov = &owner->area.niovs[index];
> >  
> >  	niov->desc.pp_magic = 0;
> > @@ -113,12 +114,13 @@ void net_devmem_free_dmabuf(struct net_iov *niov)
> >  {
> >  	struct net_devmem_dmabuf_binding *binding = net_devmem_iov_binding(niov);
> >  	unsigned long dma_addr = net_devmem_get_dma_addr(niov);
> > +	size_t niov_size = 1UL << binding->niov_shift;
> >  
> >  	if (WARN_ON(!gen_pool_has_addr(binding->chunk_pool, dma_addr,
> > -				       PAGE_SIZE)))
> > +				       niov_size)))
> >  		return;
> >  
> > -	gen_pool_free(binding->chunk_pool, dma_addr, PAGE_SIZE);
> > +	gen_pool_free(binding->chunk_pool, dma_addr, niov_size);
> >  }
> >  
> >  void net_devmem_unbind_dmabuf(struct net_devmem_dmabuf_binding *binding)
> > @@ -163,6 +165,9 @@ int net_devmem_bind_dmabuf_to_queue(struct net_device *dev, u32 rxq_idx,
> >  	u32 xa_idx;
> >  	int err;
> >  
> > +	if (binding->niov_shift != PAGE_SHIFT)
> > +		mp_params.rx_page_size = 1U << binding->niov_shift;
> > +
> >  	err = netif_mp_open_rxq(dev, rxq_idx, &mp_params, extack);
> >  	if (err)
> >  		return err;
> > @@ -184,14 +189,16 @@ struct net_devmem_dmabuf_binding *
> >  net_devmem_bind_dmabuf(struct net_device *dev, void *vdev,
> >  		       struct device *dma_dev,
> >  		       enum dma_data_direction direction,
> > -		       unsigned int dmabuf_fd, struct netdev_nl_sock *priv,
> > +		       unsigned int dmabuf_fd, unsigned int niov_shift,
> > +		       struct netdev_nl_sock *priv,
> >  		       struct netlink_ext_ack *extack)
> >  {
> >  	struct net_devmem_dmabuf_binding *binding;
> > +	size_t niov_size = 1UL << niov_shift;
> >  	static u32 id_alloc_next;
> > +	unsigned int sg_idx, i;
> >  	struct scatterlist *sg;
> >  	struct dma_buf *dmabuf;
> > -	unsigned int sg_idx, i;
> >  	unsigned long virtual;
> >  	int err;
> >  
> > @@ -213,6 +220,7 @@ net_devmem_bind_dmabuf(struct net_device *dev, void *vdev,
> >  
> >  	binding->dev = dev;
> >  	binding->vdev = vdev;
> > +	binding->niov_shift = niov_shift;
> >  	xa_init_flags(&binding->bound_rxqs, XA_FLAGS_ALLOC);
> >  
> >  	err = percpu_ref_init(&binding->ref,
> > @@ -248,18 +256,14 @@ net_devmem_bind_dmabuf(struct net_device *dev, void *vdev,
> >  			goto err_unmap;
> >  		}
> >  		binding->tx_vec = kvmalloc_objs(struct net_iov *,
> > -						dmabuf->size / PAGE_SIZE);
> > +						dmabuf->size >> niov_shift);
> >  		if (!binding->tx_vec) {
> >  			err = -ENOMEM;
> >  			goto err_unmap;
> >  		}
> >  	}
> >  
> > -	/* For simplicity we expect to make PAGE_SIZE allocations, but the
> > -	 * binding can be much more flexible than that. We may be able to
> > -	 * allocate MTU sized chunks here. Leave that for future work...
> > -	 */
> > -	binding->chunk_pool = gen_pool_create(PAGE_SHIFT,
> > +	binding->chunk_pool = gen_pool_create(niov_shift,
> >  					      dev_to_node(&dev->dev));
> >  	if (!binding->chunk_pool) {
> >  		err = -ENOMEM;
> > @@ -273,9 +277,11 @@ net_devmem_bind_dmabuf(struct net_device *dev, void *vdev,
> >  		size_t len = sg_dma_len(sg);
> >  		struct net_iov *niov;
> >  
> > -		if (!IS_ALIGNED(len, PAGE_SIZE)) {
> > +		if (!IS_ALIGNED(dma_addr, niov_size) ||
> > +		    !IS_ALIGNED(len, niov_size)) {
> >  			err = -EINVAL;
> > -			NL_SET_ERR_MSG(extack, "dma-buf SG length must be PAGE_SIZE aligned");
> > +			NL_SET_ERR_MSG(extack,
> > +				       "dmabuf sg entry not aligned to niov size");
> 
> nit: should we NL_SET_ERR_MSG_FMT here and export chunk len and expected
> alignment?

sgtm!

> >  			goto err_free_chunks;
> >  		}
> >  
> > @@ -288,7 +294,7 @@ net_devmem_bind_dmabuf(struct net_device *dev, void *vdev,
> >  
> >  		owner->area.base_virtual = virtual;
> >  		owner->base_dma_addr = dma_addr;
> > -		owner->area.num_niovs = len / PAGE_SIZE;
> > +		owner->area.num_niovs = len >> niov_shift;
> >  		owner->binding = binding;
> >  
> >  		err = gen_pool_add_owner(binding->chunk_pool, dma_addr,
> > @@ -313,7 +319,7 @@ net_devmem_bind_dmabuf(struct net_device *dev, void *vdev,
> >  			page_pool_set_dma_addr_netmem(net_iov_to_netmem(niov),
> >  						      net_devmem_get_dma_addr(niov));
> >  			if (direction == DMA_TO_DEVICE)
> > -				binding->tx_vec[owner->area.base_virtual / PAGE_SIZE + i] = niov;
> > +				binding->tx_vec[(owner->area.base_virtual >> niov_shift) + i] = niov;
> >  		}
> >  
> >  		virtual += len;
> > @@ -430,13 +436,15 @@ struct net_iov *
> >  net_devmem_get_niov_at(struct net_devmem_dmabuf_binding *binding,
> >  		       size_t virt_addr, size_t *off, size_t *size)
> >  {
> > +	size_t niov_size = 1UL << binding->niov_shift;
> > +
> >  	if (virt_addr >= binding->dmabuf->size)
> >  		return NULL;
> >  
> > -	*off = virt_addr % PAGE_SIZE;
> > -	*size = PAGE_SIZE - *off;
> > +	*off = virt_addr & (niov_size - 1);
> > +	*size = niov_size - *off;
> >  
> > -	return binding->tx_vec[virt_addr / PAGE_SIZE];
> > +	return binding->tx_vec[virt_addr >> binding->niov_shift];
> >  }
> >  
> >  /*** "Dmabuf devmem memory provider" ***/
> > @@ -454,8 +462,8 @@ int mp_dmabuf_devmem_init(struct page_pool *pool)
> >  	pool->dma_sync = false;
> >  	pool->dma_sync_for_cpu = false;
> >  
> > -	if (pool->p.order != 0)
> > -		return -E2BIG;
> > +	if (pool->p.order != binding->niov_shift - PAGE_SHIFT)
> > +		return -EINVAL;
> 
> Any specific reason you change E2BIG to EINVAL?

It seemed to reflect the new conditional more accurately, as in the case
of order < niov_shift the pool order is too small, not too big. TBH, I'm
not sure if that case is actually ever hit though, at least with current
drivers... 

Not married to it, open to go back to E2BIG.

Best,
Bobby
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
